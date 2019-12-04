using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoArcos
{
    public partial class cadentidade1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastra_Click(object sender, EventArgs e)
        {
            //Cria novo objeto entidade
            ENTIDADE entidade = new ENTIDADE();
            // Criar conexão com o banco
            ARCOS_Entities entity = new ARCOS_Entities();
            // Insere o objeto
            entity.ENTIDADE.Add(entidade);

            if (txtNomeEntidade.Text == "" || txtEndereco.Text == "" || txtNumero.Text == "" || txtBairro.Text == "" || txtCEP.Text == ""
                || txtCidade.Text == "" || drpEstado.Text == "" || txtPresidente.Text == "" || txtCNPJ.Text == "")
            {
                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
            }
            else
            {
                //entidade.ID = Convert.ToInt32(txtID.Text);
                entidade.NOME = txtNomeEntidade.Text;
                entidade.LOGRADOURO = txtEndereco.Text;
                entidade.NUMERO = txtNumero.Text;
                entidade.BAIRRO = txtBairro.Text;
                entidade.CEP = txtCEP.Text;
                entidade.CIDADE = txtCidade.Text;
                entidade.ESTADO = drpEstado.Text;
                //entidade.ID_ENTIDADE_CONTROLADORA = Convert.ToInt32(drpControladora.Text);
                entidade.PRESIDENTE = txtPresidente.Text;
                entidade.CNPJ = txtCNPJ.Text;
                entidade.LOGIN_USUARIO_ADMINISTRADOR = txtAdmnistrador.Text;
                entidade.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;



                // Commit
                Response.Write("<script>alert('Entidade cadastrada com sucesso!');</script>");

                txtNomeEntidade.Text = string.Empty;
                txtEndereco.Text = string.Empty;
                txtNumero.Text = string.Empty;
                txtBairro.Text = string.Empty;
                txtCEP.Text = string.Empty;
                txtCidade.Text = string.Empty;
                drpEstado.SelectedValue = null;
                txtPresidente.Text = string.Empty;
                txtCNPJ.Text = string.Empty;
            }

        }
    }
}
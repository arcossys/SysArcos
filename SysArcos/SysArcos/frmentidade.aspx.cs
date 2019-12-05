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
            if (!IsPostBack)
            {
                String ID = Request.QueryString["ID"];
                if ((ID != null) && (!ID.Equals("")))
                {
                    int i = Convert.ToInt32(ID);
                    ARCOS_Entities entities = GerConnetion.get(HttpContext.Current);
                    ENTIDADE u = entities.ENTIDADE.FirstOrDefault(x => x.ID.Equals(i));
                    if (u != null)
                    {
                        txtNomeEntidade.Text = u.NOME;
                        //txtNomeEntidade.ReadOnly = true;
                        txtCNPJ.Text = u.CNPJ;
                        txtLogradouro.Text = u.LOGRADOURO;
                        txtNumero.Text = u.NOME;
                        txtBairro.Text = u.BAIRRO;
                        txtCEP.Text = u.CEP;
                        txtCidade.Text = u.CIDADE;
                        drpEstado.Text = u.ESTADO;
                        drpControladora.Text = u.ESTADO;
                        txtPresidente.Text = u.PRESIDENTE;
                        txtAdmnistrador.Text = u.LOGIN_USUARIO_ADMINISTRADOR;
                        lblAcao.Text = "ALTERANDO";
                    }

                }
            }
        }

        protected void btnCadastra_Click(object sender, EventArgs e)
        {
            //Cria novo objeto entidade
            ENTIDADE entidade = new ENTIDADE();
            // Criar conexão com o banco
            ARCOS_Entities entity = new ARCOS_Entities();
            // Insere o objeto
            entity.ENTIDADE.Add(entidade);

            if (txtNomeEntidade.Text == "" || txtLogradouro.Text == "" || txtNumero.Text == "" || txtBairro.Text == "" || txtCEP.Text == ""
                || txtCidade.Text == "" || drpEstado.Text == "" || txtPresidente.Text == "" || txtCNPJ.Text == "")
            {
                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
            }
            else
            {
                //entidade.ID = Convert.ToInt32(txtID.Text);
                entidade.NOME = txtNomeEntidade.Text;
                entidade.LOGRADOURO = txtLogradouro.Text;
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
                entity.ENTIDADE.Add(entidade);
                entity.SaveChanges();


                // Commit
                Response.Write("<script>alert('Entidade cadastrada com sucesso!');</script>");

                txtNomeEntidade.Text = string.Empty;
                txtLogradouro.Text = string.Empty;
                txtNumero.Text = string.Empty;
                txtBairro.Text = string.Empty;
                txtCEP.Text = string.Empty;
                txtCidade.Text = string.Empty;
                drpEstado.SelectedValue = null;
                txtPresidente.Text = string.Empty;
                txtCNPJ.Text = string.Empty;
            }

        }

        protected void btnConsulta_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscaentidade.aspx");
        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            String ID = Request.QueryString["ID"];
            int i = Convert.ToInt32(ID);
            ARCOS_Entities entidade = GerConnetion.get(HttpContext.Current);
            ENTIDADE u = entidade.ENTIDADE.FirstOrDefault(x => x.ID.Equals(i));

            u.NOME = txtNomeEntidade.Text;
            u.CNPJ = txtCNPJ.Text;
            u.LOGRADOURO = txtLogradouro.Text;
            u.NUMERO = txtNumero.Text;
            u.BAIRRO = txtBairro.Text;
            u.CEP = txtCEP.Text;
            u.CIDADE = txtCidade.Text;
            u.ESTADO = drpEstado.SelectedValue;
            u.PRESIDENTE = txtPresidente.Text;
            u.LOGIN_USUARIO_ADMINISTRADOR = txtAdmnistrador.Text;
            entidade.Entry(u);
            entidade.SaveChanges();
        }

        protected void btnDesativa_Click(object sender, EventArgs e)
        {
            String ID = Request.QueryString["ID"];
            int i = Convert.ToInt32(ID);
            ARCOS_Entities entidade = GerConnetion.get(HttpContext.Current);
            ENTIDADE u = entidade.ENTIDADE.FirstOrDefault(x => x.ID.Equals(i));

            u.ATIVA = false;
        }
    }
}
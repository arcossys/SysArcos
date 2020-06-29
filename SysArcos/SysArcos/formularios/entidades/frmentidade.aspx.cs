using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class cadentidade1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                carregaAdministradores();
                String ID = Request.QueryString["ID"];
                if ((ID != null) && (!ID.Equals("")))
                {
                    int i = Convert.ToInt32(ID);
                    using (ARCOS_Entities entities = new ARCOS_Entities())
                    {
                        ENTIDADE u = entities.ENTIDADE.FirstOrDefault(x => x.ID.Equals(i));
                        if (u != null)
                        {
                            lblID.Text = i.ToString();
                            txtNomeEntidade.Text = u.NOME;
                            //txtNomeEntidade.ReadOnly = true;
                            txtCNPJ.Text = u.CNPJ;
                            txtTelefone.Text = u.TELEFONE;
                            txtLogradouro.Text = u.LOGRADOURO;
                            txtNumero.Text = u.NUMERO;
                            txtBairro.Text = u.BAIRRO;
                            txtCEP.Text = u.CEP;
                            txtCidade.Text = u.CIDADE;
                            drpEstado.Text = u.ESTADO;
                            txtPresidente.Text = u.PRESIDENTE;
                            txtAdmnistrador.Text = u.LOGIN_USUARIO_ADMINISTRADOR;
                            lblAcao.Text = "ALTERANDO";
                        }
                    }
                }
            }
        }

        protected void btnCadastra_Click(object sender, EventArgs e)
        {
            //Cria novo objeto entidade
            ENTIDADE entidade = null;
            try
            {
                // Criar conexão com o banco
                using (ARCOS_Entities entity = new ARCOS_Entities())
                {


                    if (txtNomeEntidade.Text == "" || txtLogradouro.Text == "" || txtNumero.Text == "" || txtBairro.Text == "" || txtCEP.Text == ""
                        || txtCidade.Text == "" || drpEstado.Text == "" || txtPresidente.Text == "" || txtCNPJ.Text == "" || txtTelefone.Text == "")
                    {
                        Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
                    }
                    else
                    {
                        if (lblAcao.Text.Equals("NOVO"))
                            entidade = new ENTIDADE();
                        else
                            entidade = entity.ENTIDADE.FirstOrDefault(x => x.ID.ToString().Equals(lblID.Text));

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
                        entidade.TELEFONE = txtTelefone.Text;
                        entidade.LOGIN_USUARIO_ADMINISTRADOR = txtAdmnistrador.Text;
                        entidade.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;

                        if (lblAcao.Text.Equals("NOVO"))
                            entity.ENTIDADE.Add(entidade);
                        else
                            entity.Entry(entidade);

                        entity.SaveChanges();

                        // Commit
                        Response.Write("<script>alert('Entidade cadastrada com sucesso!');</script>");

                        limpar();
                    }
                }
            }
            catch
            {
                Response.Write("<script>alert('Registro não pode ser salvo!');</script>");
            }

        }

        protected void btnConsulta_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscaentidade.aspx");
        }

        private void limpar()
        {
            lblID.Text = string.Empty;
            lblAcao.Text = "NOVO";
            txtNomeEntidade.Text = string.Empty;
            txtLogradouro.Text = string.Empty;
            txtNumero.Text = string.Empty;
            txtBairro.Text = string.Empty;
            txtCEP.Text = string.Empty;
            txtCidade.Text = string.Empty;
            drpEstado.SelectedValue = null;
            txtPresidente.Text = string.Empty;
            txtCNPJ.Text = string.Empty;
            txtAdmnistrador.Text = string.Empty;
            txtNumero.Text = string.Empty;
            txtTelefone.Text = string.Empty;
        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {
            limpar();
        }

        private void carregaAdministradores()
        {
            using (ARCOS_Entities entity = new ARCOS_Entities())
            {
                List<USUARIO> list = entity.USUARIO.OrderBy(x => x.LOGIN).ToList();
                txtAdmnistrador.DataTextField = "LOGIN";
                txtAdmnistrador.DataValueField = "LOGIN";
                txtAdmnistrador.DataSource = list;
                txtAdmnistrador.DataBind();
                txtAdmnistrador.Items.Insert(0, "");
            }
        }
    }
}
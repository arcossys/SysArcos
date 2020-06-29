using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class frmassistido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String nome = Request.QueryString["nome"];
                if ((nome != null) && (!nome.Equals("")))
                {
                    using (ARCOS_Entities entities = new ARCOS_Entities())
                    {
                        ASSISTIDO u = entities.ASSISTIDO.FirstOrDefault(x => x.NOME.Equals(nome));
                        if (u != null)
                        {
                            txtNomeAssistido.Text = u.NOME;
                            txtApelido.Text = u.APELIDO;
                            txtCPF.Text = u.CPF;
                            txtLogradouro.Text = u.LOGRADOURO;
                            txtNumero.Text = u.NUMERO;
                            txtBairro.Text = u.BAIRRO;
                            txtCEP.Text = u.CEP;
                            txtCidade.Text = u.CIDADE;
                            drpEstado.Text = u.ESTADO;


                            lblAcao.Text = "ALTERANDO";
                        }
                    }
                }
            }
        }
        protected void btnCadastra_Click(object sender, EventArgs e)
        {

       
        }

        private void limpar()
        {
            txtNomeAssistido.Text = string.Empty;
            txtApelido.Text = string.Empty;
            txtCPF.Text = string.Empty;
            txtDataNascimento.Text = string.Empty;
            txtLogradouro.Text = string.Empty;
            txtNumero.Text = string.Empty;
            txtBairro.Text = string.Empty;
            txtCEP.Text = string.Empty;
            txtCidade.Text = string.Empty;
            drpEstado.SelectedValue = null;
            txtParentescoAssistido.Text = string.Empty;
            txtIDResponsavelAssistido.Text = string.Empty;
            lblAcao.Text = "NOVO";
        }

        protected void btnConsulta_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscaassistido.aspx");
        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {

            txtNomeAssistido.ReadOnly = false;
            limpar();

        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscaassistido.aspx");
        }

        protected void btn_cadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                ASSISTIDO assistido = new ASSISTIDO();
                using (ARCOS_Entities entity = new ARCOS_Entities())
                {

                    entity.ASSISTIDO.Add(assistido);

                    if (txtNomeAssistido.Text == "" || txtApelido.Text == "" || txtCPF.Text == ""
                        || txtDataNascimento.Text == "" || txtLogradouro.Text == "" || txtNumero.Text == ""
                        || txtBairro.Text == "" || txtCEP.Text == "" || txtCidade.Text == ""
                        || drpEstado.Text == "")
                    {
                        Response.Write("<script>alert('Há campos obrigatórios não preenchidos!');</script>");
                    }
                    else
                    {
                        assistido.NOME = txtNomeAssistido.Text;
                        assistido.APELIDO = txtApelido.Text;
                        assistido.CPF = txtCPF.Text;
                        assistido.DATA_NASCIMENTO = Convert.ToDateTime(txtDataNascimento.Text);
                        assistido.LOGRADOURO = txtLogradouro.Text;
                        assistido.NUMERO = txtNumero.Text;
                        assistido.BAIRRO = txtBairro.Text;
                        assistido.CEP = txtCEP.Text;
                        assistido.CIDADE = txtCidade.Text;
                        assistido.ESTADO = drpEstado.Text;
                        assistido.PARENTESCO_ASSISTIDO_RESPONSAVEL = txtParentescoAssistido.Text;
                        assistido.ID_ASSISTIDO_RESPONSAVEL = 1;
                        assistido.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;



                        Response.Write("<script>alert('Assistido cadastrado com sucesso!');</script>");


                    }
                    limpar();
                    entity.SaveChanges();

                    Response.Write("<script>alert('Usuario salvo com Sucesso!');</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('Registro não pode ser salvo!');</script>");
            }
        }
    }
}
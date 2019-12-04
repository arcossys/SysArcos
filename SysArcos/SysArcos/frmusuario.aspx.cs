using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoArcos
{
    public partial class formusuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String login = Request.QueryString["login"];
                if ((login!=null) && (!login.Equals("")))
                {
                    ARCOS_Entities entities = GerConnetion.get(HttpContext.Current);
                    USUARIO u = entities.USUARIO.FirstOrDefault(x => x.LOGIN.Equals(login));
                    if (u != null)
                    {
                        txt_user.ReadOnly = true;
                        txt_cpf.Text = u.CPF;
                        txt_email.Text = u.EMAIL;
                        txt_nomeUsuario.Text = u.NOME;
                        txt_senhaUsuario.Text = u.SENHA;
                        txt_user.Text = u.LOGIN;
                        CB_ativo.Checked = u.ATIVO;
                        lblAcao.Text = "ALTERANDO";
                    }

                }
            }
        }

        protected void btn_cadastrar_Click(object sender, EventArgs e)
        {
            if (txt_nomeUsuario.Text == "" || txt_senhaUsuario.Text == "" || txt_user.Text == "" ||
                 txt_cpf.Text == "" || txt_email.Text == "")
            {
                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
            }
            else
            {
                ARCOS_Entities entity = GerConnetion.get(HttpContext.Current);

                USUARIO usuario = null;

                if (lblAcao.Text.Equals("NOVO"))
                {
                    usuario = new USUARIO();
                    usuario.LOGIN = txt_user.Text;

                    usuario.SENHA = txt_senhaUsuario.Text;
                    usuario.NOME = txt_nomeUsuario.Text.ToUpper();
                    usuario.CPF = txt_cpf.Text;
                    usuario.EMAIL = txt_email.Text.ToLower();
                    usuario.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;
                    usuario.ATIVO = CB_ativo.Checked;
                    entity.USUARIO.Add(usuario);
                }
                else
                {
                    usuario = entity.USUARIO.FirstOrDefault(x => x.LOGIN.Equals(txt_user.Text));


                    usuario.SENHA = txt_senhaUsuario.Text;
                    usuario.NOME = txt_nomeUsuario.Text.ToUpper();
                    usuario.CPF = txt_cpf.Text;
                    usuario.EMAIL = txt_email.Text.ToLower();
                    usuario.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;
                    usuario.ATIVO = CB_ativo.Checked;
                    entity.Entry(usuario);
                }
                limpar();
                entity.SaveChanges();

                Response.Write("<script>alert('Usuario salvo com Sucesso!');</script>");
            }
        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscausuario.aspx");
        }

        private void limpar()
        {
            txt_nomeUsuario.Text = string.Empty;
            txt_senhaUsuario.Text = string.Empty;
            txt_user.Text = string.Empty;
            txt_cpf.Text = string.Empty;
            txt_email.Text = string.Empty;
            CB_ativo.Checked = true;
            lblAcao.Text = "NOVO";
        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {
            txt_user.ReadOnly = false;
            limpar();
        }
    }
}
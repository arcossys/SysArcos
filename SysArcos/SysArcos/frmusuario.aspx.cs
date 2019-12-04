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

        }

        protected void btn_cadastrar_Click(object sender, EventArgs e)
        {
            USUARIO usuario = new USUARIO();

            if (txt_nomeUsuario.Text == "" || txt_senhaUsuario.Text == "" || txt_user.Text == "" ||
                 txt_cpf.Text == "" || txt_email.Text == "")
            {
                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
            }
            else
            {
                usuario.LOGIN = txt_nomeUsuario.Text;
                usuario.SENHA = txt_senhaUsuario.Text;
                usuario.NOME = txt_user.Text;
                usuario.CPF = txt_cpf.Text;
                usuario.EMAIL = txt_email.Text;
                usuario.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;

                txt_nomeUsuario.Text = string.Empty;
                txt_senhaUsuario.Text = string.Empty;
                txt_user.Text = string.Empty;
                txt_cpf.Text = string.Empty;
                txt_email.Text = string.Empty;

                Response.Write("<script>alert('Usuario Cadastrado com Sucesso!');</script>");

            }
            ARCOS_Entities entity = new ARCOS_Entities();
            entity.USUARIO.Add(usuario);
        }
    }
}
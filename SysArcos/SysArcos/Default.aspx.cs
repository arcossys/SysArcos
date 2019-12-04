using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoArcos
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            ARCOS_Entities entities = new ARCOS_Entities();
            USUARIO u =  entities.USUARIO.FirstOrDefault(x => x.LOGIN.Equals(txtUsuario.Text) &&    x.SENHA.Equals(txtSenha.Text));
            if (u == null)
            {
                //conexão falhada
                Response.Write("<script>alert('Login ou senha incorretos');</script>");
            }
            else
            {
                // conexão bem sucedida
                

                //Armazena instância de usuário na sessão.
                Session["usuariologado"] = u;

                //Redireciona para outra página
                Response.Redirect("PaginaInicial.aspx");
            }
        }
    }
}
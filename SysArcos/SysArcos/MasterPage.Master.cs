using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoArcos
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                USUARIO u = (USUARIO)Session["usuariologado"]; //Neste caso deve-se fazer a conversão
                if (u != null)
                {
                    lbl_welcomeUser.Text = ("Usuário logado: " + u.NOME); // em 'u' vai recuperar o atributo NOME
                }

                else
                {
                    Response.Redirect("Default.aspx");
                }

            }
        }

        protected void lnk_logout_Click(object sender, EventArgs e)
        {
            // Remove todas as variáveis da sessão servidor.
            Session.RemoveAll();       //OU   Session["usuariologado"] = null;

            //Redireciona para a página principal
            Response.Redirect("Default.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            using (ARCOS_Entities entities = new ARCOS_Entities())
            {
                USUARIO u = entities.USUARIO.FirstOrDefault(x => x.LOGIN.Equals(txtUsuario.Text) && x.SENHA.Equals(txtSenha.Text));
                if (u == null)
                {
                    //conexão falhada
                    Response.Write("<script>alert('Login ou senha incorretos');</script>");
                }
                else
                {
                    //Verifica se é administrador e caso não seja, 
                    //verifica as entidades que está vinculado
                    ArrayList entidades = new ArrayList();
                    foreach (ENTIDADE i in u.ENTIDADE)
                        entidades.Add(i.ID);


                    // conexão bem sucedida
                    Session["usuariologado"] = u.LOGIN.ToString();
                    Session["entidades"] = entidades;
                    if (u.ALTERA_SENHA_PROX_LOGIN)
                    {
                        //Redireciona para outra página
                        Session["altera_primeiro_login"] = true;
                        Response.Redirect("PaginaInicial.aspx");
                    }
                    else
                        //Redireciona para outra página
                        Session["altera_primeiro_login"] = false;
                        Response.Redirect("PaginaInicial.aspx");
                }
            }
        }
    }
}
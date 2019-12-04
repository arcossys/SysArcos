using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoArcos
{
    public partial class frmbuscausuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmusuario.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            ARCOS_Entities entities = GerConnetion.get(HttpContext.Current);
            List<USUARIO> lista = null;
            if (rdLogin.Checked)
            {
                lista = entities.USUARIO.Where(x => x.LOGIN.StartsWith(txtBusca.Text)).ToList();
            }
            else if (rdNome.Checked)
            {
                lista = entities.USUARIO.Where(x => x.NOME.StartsWith(txtBusca.Text)).ToList();
            }
            else
            {
                lista = entities.USUARIO.ToList();
            }
            grid.DataSource = lista.OrderBy(x=>x.LOGIN);
            grid.DataBind();

        }

        protected void btnSelecionar_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue!=null)
                //Redireciona para a página de cadastro com o login como parâmtro
                Response.Redirect("frmusuario.aspx?login=" + grid.SelectedValue.ToString());
        }

        protected void btnRemover_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue!=null)
            {
                string login = grid.SelectedValue.ToString();
                ARCOS_Entities entities = GerConnetion.get(HttpContext.Current);
                USUARIO usuario = entities.USUARIO.FirstOrDefault(x => x.LOGIN.Equals(login));
                entities.USUARIO.Remove(usuario);
                entities.SaveChanges();

                //Limpar Grid 
                grid.DataSource = null;
                grid.DataBind();
                grid.SelectedIndex = -1;
                Response.Write("<script>alert('Removido com sucesso!');</script>");
            }
        }
    }
}
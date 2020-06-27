using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class frmbuscaassistencia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {

            Response.Redirect("frmassistencia.aspx");
        }

        protected void btnSelecionar_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
                //Redireciona para a página de cadastro com o login como parâmtro
                Response.Redirect("frmassistencia.aspx?descricao=" + grid.SelectedValue.ToString());
        }

        protected void btnRemover_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
            {
                string login = grid.SelectedValue.ToString();
                using (ARCOS_Entities entities = new ARCOS_Entities())
                {
                    try
                    {
                        ASSISTENCIA descricao = entities.ASSISTENCIA.FirstOrDefault(x => x.DESCRICAO.Equals(login));
                        entities.ASSISTENCIA.Remove(descricao);
                        entities.SaveChanges();

                        //Limpar Grid 
                        grid.DataSource = null;
                        grid.DataBind();
                        grid.SelectedIndex = -1;
                        Response.Write("<script>alert('Removido com sucesso!');</script>");
                    }
                    catch
                    {
                        Response.Write("<script>alert('Registro não pode ser removido!');</script>");
                    }
                }
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }
    }
}
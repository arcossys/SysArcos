using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoArcos
{
    public partial class frmbuscaassistido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmassistido.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            ARCOS_Entities entities = GerConnetion.get(HttpContext.Current);
            List<ASSISTIDO> lista = null;

            if (rdNome.Checked)
            {
                lista = entities.ASSISTIDO.Where(x => x.NOME.StartsWith(txtBusca.Text)).ToList();
            }
            else
            {
                lista = entities.ASSISTIDO.ToList();
            }

            grid.DataSource = lista.OrderBy(x => x.NOME);
            grid.DataBind();

        }

        protected void btnSelecionar_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
                Response.Redirect("frmassistido.aspx?nome=" + grid.SelectedValue.ToString());
        }

        protected void btnRemover_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
            {
                string nome = grid.SelectedValue.ToString();
                ARCOS_Entities entities = GerConnetion.get(HttpContext.Current);
                ASSISTIDO assistido = entities.ASSISTIDO.FirstOrDefault(x => x.NOME.Equals(nome));
                entities.ASSISTIDO.Remove(assistido);
                entities.SaveChanges();

                grid.DataSource = null;
                grid.DataBind();
                grid.SelectedIndex = -1;
                Response.Write("<script>alert('Removido com sucesso!');</script>");
            }
        }
    }
}
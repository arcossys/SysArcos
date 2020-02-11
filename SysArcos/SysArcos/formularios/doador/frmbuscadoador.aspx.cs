using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class frmbusca : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            using (ARCOS_Entities entities = new ARCOS_Entities())
            {
                List<DOADOR> lista = null;
                if (rdnome.Checked)
                {
                    lista = entities.DOADOR.Where(x => x.NOME.StartsWith(txtbusca.Text)).ToList();
                }
                else if (rdcidade.Checked)
                {
                    lista = entities.DOADOR.Where(x => x.CIDADE.StartsWith(txtbusca.Text)).ToList();
                }
                else if (rdtipodoaçao.Checked)
                {
                    lista = entities.DOADOR.Where(x => x.TIPO_DOACAO.StartsWith(txtbusca.Text)).ToList();
                }
                else
                {
                    lista = entities.DOADOR.ToList();
                }
                grid.DataSource = lista.OrderBy(x => x.ATIVO);
                grid.DataBind();
            }
        }

        protected void btncancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmdoador.aspx");
        }

        protected void btnselecionar_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
                Response.Redirect("frmdoador.aspx?ID=" + grid.SelectedValue.ToString());
        }

        protected void btnremover_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
            {
                string id = grid.SelectedValue.ToString();
                using (ARCOS_Entities entities = new ARCOS_Entities())
                {
                    DOADOR doador = entities.DOADOR.FirstOrDefault(x => x.ID.ToString().Equals(id));
                    entities.DOADOR.Remove(doador);
                    entities.SaveChanges();

                    grid.DataSource = null;
                    grid.DataBind();
                    grid.SelectedIndex = -1;
                    Response.Write("<script>alert('Removido com sucesso!');</script>");
                }
            }
        }
    }
}
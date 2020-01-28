using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoArcos
{
    public partial class frmbuscaproduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmproduto.aspx");
        }

        protected void btnSelecionar_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)               
                Response.Redirect("frmproduto.aspx?descricao=" + grid.SelectedValue.ToString());
        }

        protected void btnRemover_Click(object sender, EventArgs e)
        {

            if (grid.SelectedValue != null)
            {
                string descricao = grid.SelectedValue.ToString();
                using (ARCOS_Entities entities = new ARCOS_Entities())
                {
                    PRODUTO produto = entities.PRODUTO.FirstOrDefault(x => x.DESCRICAO.Equals(descricao));
                    entities.PRODUTO.Remove(produto);
                    entities.SaveChanges();

                    //Limpar Grid 
                    grid.DataSource = null;
                    grid.DataBind();
                    grid.SelectedIndex = -1;
                    Response.Write("<script>alert('Removido com sucesso!');</script>");
                }
            }



        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            using (ARCOS_Entities entities = new ARCOS_Entities())
            {
                List<PRODUTO> lista = null;

                if (rdEspecificacao.Checked)
                {
                    lista = entities.PRODUTO.Where(x => x.DESCRICAO.StartsWith(txtBusca.Text)).ToList();
                }
                else if (rdDescricao.Checked)
                {
                    lista = entities.PRODUTO.Where(x => x.ESPECIFICACOES.StartsWith(txtBusca.Text)).ToList();
                }
                else
                {
                    lista = entities.PRODUTO.ToList();
                }
                grid.DataSource = lista.OrderBy(x => x.ID);
                grid.DataBind();
            }
        }
    }
}
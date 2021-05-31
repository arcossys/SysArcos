using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos.formularios.categoria_produto
{
    public partial class frmbuscacategoria_produto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            using (ARCOS_Entities entities = new ARCOS_Entities())
            {
                List<CATEGORIA_PRODUTO> lista;
                if (txtBusca.Text.Equals(""))
                {
                    lista = entities.CATEGORIA_PRODUTO.ToList();
                }
                else
                {
                    lista = entities.CATEGORIA_PRODUTO.Where(x=>x.DESCRICAO.Contains(txtBusca.Text)).ToList();
                }
                
                gridBusca.DataSource = lista.OrderBy(x => x.DESCRICAO);
                gridBusca.DataBind();
            }
        }

        protected void btnRemover_Click(object sender, EventArgs e)
        {
            if (gridBusca.SelectedValue != null)
            {
                //String ID = Request.QueryString["ID"];
                string ID = gridBusca.SelectedValue.ToString();
                int i = Convert.ToInt32(ID);
                try
                {
                    using (ARCOS_Entities entities = new ARCOS_Entities())
                    {
                        CATEGORIA_PRODUTO cat = entities.CATEGORIA_PRODUTO.FirstOrDefault(x => x.ID.Equals(i));
                        entities.CATEGORIA_PRODUTO.Remove(cat);
                        entities.SaveChanges();

                        gridBusca.DataSource = null;
                        gridBusca.DataBind();
                        gridBusca.SelectedIndex = -1;
                        Response.Write("<script>alert('Removido com sucesso!');</script>");
                    }
                }
                catch
                {
                    Response.Write("<script>alert('Falha ao remover registro!');</script>");
                }
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            if (gridBusca.SelectedValue != null)
                Response.Redirect("frmcategoria_produto.aspx?ID=" + gridBusca.SelectedValue.ToString());
        }

    
        protected void brnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmcategoria_produto.aspx");
        }
    }
}
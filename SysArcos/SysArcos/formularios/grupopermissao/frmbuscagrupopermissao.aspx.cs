using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos.formularios.usuario
{
    public partial class frmbuscagrupopermissao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            using (ARCOS_Entities entities = new ARCOS_Entities())
            {
                List<GRUPO_PERMISSAO> lista = null;
                if (txtBusca.Text == string.Empty)
                {
                    lista = entities.GRUPO_PERMISSAO.Where(x => x.DESCRICAO.StartsWith(txtBusca.Text)).ToList();
                }
                else
                {
                    lista = entities.GRUPO_PERMISSAO.ToList();
                }
                grid.DataSource = lista.OrderBy(x => x.DESCRICAO);
                grid.DataBind();
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmgrupopermissao.aspx");
        }

        protected void btnSelecionar_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
                //Redireciona para a página de cadastro com o login como parâmtro
                Response.Redirect("frmgrupopermissao.aspx?ID=" + grid.SelectedValue.ToString());
        }

        protected void btnRemover_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
            {
                string ID = grid.SelectedValue.ToString();
                try
                {
                    using (ARCOS_Entities entities = new ARCOS_Entities())
                    {
                        GRUPO_PERMISSAO gp = entities.GRUPO_PERMISSAO.
                            FirstOrDefault(x => x.ID.ToString().Equals(ID));
                        entities.GRUPO_PERMISSAO.Remove(gp);
                        entities.SaveChanges();

                        //Limpar Grid 
                        grid.DataSource = null;
                        grid.DataBind();
                        grid.SelectedIndex = -1;
                        Response.Write("<script>alert('Removido com sucesso!');</script>");
                    }
                }
                catch
                {
                    Response.Write("<script>alert('Falha ao remover registro!');</script>");
                }
            }
        }

        protected void btnPermissoes_Click(object sender, EventArgs e)
        {

        }
    }
}
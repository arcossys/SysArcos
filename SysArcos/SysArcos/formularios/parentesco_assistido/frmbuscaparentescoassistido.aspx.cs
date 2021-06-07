using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos.formularios.parentesco_assistido
{
    public partial class frmbuscaparentescoassistido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            using (ARCOS_Entities entities = new ARCOS_Entities())
            {
                List<GRAU_DEPENDENCIA> lista = null;
                lista = entities.GRAU_DEPENDENCIA.Where(x => x.DESCRICAO.StartsWith(txtBusca.Text)).ToList();
                grid.DataSource = lista.OrderBy(x => x.DESCRICAO);
                grid.DataBind();
            }

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmparentescoassistido.aspx");
        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
                //Redireciona para a página de cadastro com o login como parâmtro
                Response.Redirect("frmparentescoassistido.aspx?ID=" + grid.SelectedValue.ToString());
        }

        protected void btnRemover_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
            {
                string parentesco = grid.SelectedValue.ToString();
                //obtendo a conexão com o banco de dados
                try
                {
                    using (ARCOS_Entities entities = new ARCOS_Entities())
                    {
                        GRAU_DEPENDENCIA gd = entities.GRAU_DEPENDENCIA.FirstOrDefault(x => x.ID.ToString().Equals(parentesco));
                        entities.GRAU_DEPENDENCIA.Remove(gd);
                        entities.SaveChanges();

                        //limpar grid
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
    }
}
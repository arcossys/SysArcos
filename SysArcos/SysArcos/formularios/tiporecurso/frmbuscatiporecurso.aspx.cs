using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class frmbuscatiporecurso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            using (ARCOS_Entities entities = new ARCOS_Entities())
            {
                List<TIPO_RECURSO> lista = null;
                if (rddescricao.Checked)
                {
                    lista = entities.TIPO_RECURSO.Where(x => x.DESCRICAO.StartsWith(txtbusca.Text)).ToList();


                }
                else if (rddescricao.Checked)
                {
                    lista = entities.TIPO_RECURSO.Where(x => x.DESCRICAO.StartsWith(txtbusca.Text)).ToList();

                }
                else
                {
                    lista = entities.TIPO_RECURSO.ToList();

                }
                Grid.DataSource = lista.OrderBy(x => x.DESCRICAO);

                Grid.DataBind();
            }
        }

        protected void btnremover_Click(object sender, EventArgs e)
        {
            if (Grid.SelectedValue != null)
            {
                string ID = Grid.SelectedValue.ToString();
                try
                {
                    using (ARCOS_Entities entities = new ARCOS_Entities())
                    {
                        TIPO_RECURSO TIPO_RECURSO = entities.TIPO_RECURSO.FirstOrDefault(x => x.ID.ToString().Equals(ID));
                        entities.TIPO_RECURSO.Remove(TIPO_RECURSO);
                        entities.SaveChanges();

                        Grid.DataSource = null;
                        Grid.DataBind();
                        Grid.SelectedIndex = -1;
                        Response.Write("<script>alert('Removido com sucesso!');</script>");
                    }
                }
                catch
                {
                    Response.Write("<script>alert('Falha ao remover registro!');</script>");
                }
            }
        }

        protected void btnselecionar_Click(object sender, EventArgs e)
        {
            if (Grid.SelectedValue != null)
                //Redireciona para a página de cadastro com o login como parâmtro
                Response.Redirect("frmtiporecurso.aspx?ID=" + Grid.SelectedValue.ToString());
        }

        protected void btnvoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmtiporecurso.aspx");
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class frmvoluntariado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Buscar_Click(object sender, EventArgs e)
        {
            using (ARCOS_Entities entities = new ARCOS_Entities())
            {
                List<VOLUNTARIADO> lista = null;
                if (rd_entidade.Checked)
                {
                    lista = entities.VOLUNTARIADO.Where(x => x.ENTIDADE.NOME.StartsWith(txt_Busca.Text)).ToList();
                }
                else if (rd_datainicial.Checked)
                {
                    lista = entities.VOLUNTARIADO.Where(x => x.DATA_INICIAL.Equals(txt_Busca.Text)).ToList();
                }
                else if (rd_descricao.Checked)
                {
                    lista = entities.VOLUNTARIADO.Where(x => x.DESCRICAO.StartsWith(txt_Busca.Text)).ToList();
                }
                else
                {
                    lista = entities.VOLUNTARIADO.ToList();
                }
                grid.DataSource = lista;//.OrderBy(x => x.VOLUNTARIAR);
                grid.DataBind();
            }
        }

        protected void btn_Cancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmvoluntariado.aspx");
        }

        protected void btn_Remover_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
            {
                Int32 id = Convert.ToInt32(grid.SelectedValue);
                try
                {
                    using (ARCOS_Entities entities = new ARCOS_Entities())
                    {
                        VOLUNTARIADO volunt = entities.VOLUNTARIADO.FirstOrDefault(x => x.ID.Equals(id));
                        entities.VOLUNTARIADO.Remove(volunt);
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

        protected void btn_Selecionar_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
                //Redireciona para a página de cadastro com o login como parâmtro
                Response.Redirect("frmvoluntariado.aspx?id=" + grid.SelectedValue);
        }
    }
}
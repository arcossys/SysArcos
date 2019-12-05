using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoArcos
{
    public partial class frmbuscaentidade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            ARCOS_Entities entities = GerConnetion.get(HttpContext.Current);
            List<ENTIDADE> lista = null;

            //if (ddlAtivo.SelectedValue == "" && ddlCampos.SelectedValue == "")
            //{
            //    lista = entities.ENTIDADE.ToList();
            //    grid.DataSource = lista;//.OrderBy(x => x.ID);
            //    grid.DataBind();
            //}
            //else if (ddlAtivo.SelectedValue != "" && ddlCampos.SelectedValue == "")
            //{
            //    switch (ddlAtivo.SelectedValue)
            //    {
            //        case "1":
            //            {
            //                lista = entities.ENTIDADE.ToList();

            //            }
            //            break;
            //    }

            //}
            //else if (ddlAtivo.SelectedValue == "" && ddlCampos.SelectedValue != "")
            //{
            //    switch (ddlCampos.SelectedValue)
            //    {
            //        case "1":
            //            {

            //            }
            //            break;

            //    }
            //}
            //else if (ddlAtivo.SelectedValue != "" && ddlCampos.SelectedValue != "")
            //{
            //    int i, j;
            //    i = Convert.ToInt32(ddlAtivo.SelectedIndex);
            //    j = Convert.ToInt32(ddlCampos.SelectedItem);

            //    lista = entities.ENTIDADE.Where(x => x.ATIVA.Equals(i)).Where(y => ()).ToList();
            //}
            if (rdativo.Checked)
            {
                lista = entities.ENTIDADE.Where(x => x.ATIVA.Equals(rdativo.Checked)).ToList();
            }
            else if (rddesativado.Checked)
            {
                lista = entities.ENTIDADE.Where(x => x.ATIVA.Equals(rddesativado.Checked)).ToList();
            }

            if (rdnome.Checked)
            {
                lista = entities.ENTIDADE.Where(x => x.NOME.StartsWith(txtbusca.Text)).ToList();
            }
            else if (rdcidade.Checked)
            {
                lista = entities.ENTIDADE.Where(x => x.CIDADE.StartsWith(txtbusca.Text)).ToList();
            }
            else if (rdpresidente.Checked)
            {
                lista = entities.ENTIDADE.Where(x => x.PRESIDENTE.StartsWith(txtbusca.Text)).ToList();
            }
            else if (rdCNPJ.Checked)
            {
                lista = entities.ENTIDADE.Where(x => x.CNPJ.StartsWith(txtbusca.Text)).ToList();
            }

            lista = entities.ENTIDADE.ToList();

            grid.DataSource = lista.OrderBy(x => x.ID);
            grid.DataBind();
        }

        protected void btncancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmentidade.aspx");
        }

        protected void btnselecionar_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
                Response.Redirect("frmentidade.aspx?ID=" + grid.SelectedValue.ToString());
        }

        protected void btnremover_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
            {
                //String ID = Request.QueryString["ID"];
                string ID = grid.SelectedValue.ToString();
                int i = Convert.ToInt32(ID);
                ARCOS_Entities entities = GerConnetion.get(HttpContext.Current);
                ENTIDADE entidade = entities.ENTIDADE.FirstOrDefault(x => x.ID.Equals(i));
                entities.ENTIDADE.Remove(entidade);
                entities.SaveChanges();

                grid.DataSource = null;
                grid.DataBind();
                grid.SelectedIndex = -1;
                Response.Write("<script>alert('Removido com sucesso!');</script>");
            }
        }
    }
}
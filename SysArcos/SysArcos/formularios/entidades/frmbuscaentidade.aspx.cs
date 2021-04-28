using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class frmbuscaentidade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            buscar();
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
                try
                {
                    using (ARCOS_Entities entities = new ARCOS_Entities())
                    {
                        ENTIDADE entidade = entities.ENTIDADE.FirstOrDefault(x => x.ID.Equals(i));
                        entities.ENTIDADE.Remove(entidade);
                        entities.SaveChanges();

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

        private void buscar()
        {
            using (ARCOS_Entities entities = new ARCOS_Entities())
            {
                IQueryable<ENTIDADE> query = null;
                if (txtbusca.Text == string.Empty)
                {
                    query = entities.ENTIDADE
                        .Where(x => x.ATIVA.Equals(ckAtivo.Checked));
                }
                else if (rdnome.Checked)
                {
                    query = entities.ENTIDADE.Where(x => x.NOME.StartsWith(txtbusca.Text) &&
                                                         x.ATIVA.Equals(ckAtivo.Checked));
                }
                else if (rdcidade.Checked)
                {
                    query = entities.ENTIDADE.Where(x => x.CIDADE.StartsWith(txtbusca.Text) &&
                                                         x.ATIVA.Equals(ckAtivo.Checked));
                }
                else if (rdpresidente.Checked)
                {
                    query = entities.ENTIDADE.Where(x => x.PRESIDENTE.StartsWith(txtbusca.Text) &&
                                                         x.ATIVA.Equals(ckAtivo.Checked));
                }
                else if (rdCNPJ.Checked)
                {
                    query = entities.ENTIDADE.Where(x => x.CNPJ.StartsWith(txtbusca.Text) &&
                                                         x.ATIVA.Equals(ckAtivo.Checked));
                }

                List<ENTIDADE> lista = query.OrderBy(x => x.NOME).ToList();
                //Verifica se usuário é administrador
                ArrayList entidades = (ArrayList)Session["entidades"];
                if (entidades != null && entidades.Count > 0)
                {
                    lista = lista.Where(x => entidades.Contains(x.ID)).ToList();

                }

                grid.DataSource = lista;
                grid.DataBind();
            }
        }

        protected void grid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grid.PageIndex = e.NewPageIndex;
            buscar();
        }
    }
}
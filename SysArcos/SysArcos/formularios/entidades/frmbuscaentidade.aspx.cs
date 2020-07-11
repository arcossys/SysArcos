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
            using (ARCOS_Entities entities = new ARCOS_Entities())
            {
                List<ENTIDADE> lista = null;

                if (txtbusca.Text == string.Empty)
                {
                    lista = entities.ENTIDADE.Where(x =>x.ATIVA.Equals(ckAtivo.Checked)).ToList();
                }
                else if (rdnome.Checked)
                {
                    lista = entities.ENTIDADE.Where(x => x.NOME.StartsWith(txtbusca.Text) &&
                                                         x.ATIVA.Equals(ckAtivo.Checked)).ToList();
                }
                else if (rdcidade.Checked)
                {
                    lista = entities.ENTIDADE.Where(x => x.CIDADE.StartsWith(txtbusca.Text) &&
                                                         x.ATIVA.Equals(ckAtivo.Checked)).ToList();
                }
                else if (rdpresidente.Checked)
                {
                    lista = entities.ENTIDADE.Where(x => x.PRESIDENTE.StartsWith(txtbusca.Text) &&
                                                         x.ATIVA.Equals(ckAtivo.Checked)).ToList();
                }
                else if (rdCNPJ.Checked)
                {
                    lista = entities.ENTIDADE.Where(x => x.CNPJ.StartsWith(txtbusca.Text) &&
                                                         x.ATIVA.Equals(ckAtivo.Checked)).ToList();
                }

                //Verifica se usuário é administrador
                ArrayList entidades = (ArrayList) Session["entidades"];
                if (entidades != null && entidades.Count > 0)
                {
                    lista = lista.Where(x => entidades.Contains(x.ID)).ToList();
                    
                }

                grid.DataSource = lista.OrderBy(x => x.ID);
                grid.DataBind();
            }
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
    }
}
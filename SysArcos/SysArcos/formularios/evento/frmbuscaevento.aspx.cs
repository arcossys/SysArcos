using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;

namespace SysArcos.formularios.evento
{
    public partial class frmbuscaevento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmevento.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            buscar();
        }

        private void buscar()
        {

            using (ARCOS_Entities entities = new ARCOS_Entities())
            {
                List<EVENTO> lista = null;
                if (rbNome.Checked)
                {
                    lista = entities.EVENTO.Where(x => x.NOME.StartsWith(TextBox1.Text))
                        .OrderBy(x => x.NOME)
                        .ToList();
                }
                else if (rbDescricao.Checked)
                {
                    lista = entities.EVENTO.Where(x => x.NOME.StartsWith(TextBox1.Text))
                        .OrderBy(x => x.DESCRICAO)
                        .ToList();
                }
                else
                {
                    lista = entities.EVENTO
                        .OrderBy(x => x.NOME)
                        .ToList();
                }
                GridView1.DataSource = lista;
                GridView1.DataBind();
            }
        }
    }

}
    

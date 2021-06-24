using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos.formularios.estoque
{
    public partial class frmbuscaestoque : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using(ARCOS_Entities conn = new ARCOS_Entities())
                {
                    carregarGrid(conn);
                }
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmestoque.aspx");
        }

        private void carregarGrid(ARCOS_Entities conn)
        {
            List<ENTIDADE> lista = conn.ENTIDADE.
                Where(linha => linha.ATIVA == true).
                OrderBy(linha => linha.NOME).ToList();
            ddlEntidade.DataTextField = "NOME";//Carrega o campo que será mostrado
            ddlEntidade.DataValueField = "ID";//Carrega Primary Key
            ddlEntidade.DataSource = lista;
            ddlEntidade.DataBind();
            ddlEntidade.Items.Insert(0, "");
        }
    }
}
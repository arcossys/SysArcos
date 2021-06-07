using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos.formularios.estoque
{
    public partial class frmestoque : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using(ARCOS_Entities conn = new ARCOS_Entities())
                {
                    carregaEntidade(conn);
                    carregaProduto(conn);
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscaestoque.aspx");
        }

        private void carregaProduto(ARCOS_Entities conn)
        {
            List<PRODUTO> list = conn.PRODUTO.OrderBy(x => x.DESCRICAO).ToList();
            ddlProduto.DataTextField = "DESCRICAO";//Carrega o campo que será mostrado
            ddlProduto.DataValueField = "ID";//Carrega Primary Key
            ddlProduto.DataSource = list;
            ddlProduto.DataBind();
            ddlProduto.Items.Insert(0, "");
        }

        private void carregaEntidade( ARCOS_Entities conn)
        {
            List<ENTIDADE> list = conn.ENTIDADE.OrderBy(x => x.NOME).ToList();
            ddlEntidade.DataTextField = "NOME";//Carrega o campo que será mostrado
            ddlEntidade.DataValueField = "ID";//Carrega Primary Key
            ddlEntidade.DataSource = list;
            ddlEntidade.DataBind();
            ddlEntidade.Items.Insert(0, "");
        }
    }
}
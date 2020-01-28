using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoArcos
{
    public partial class frmevento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                    carregarEntidade();
                    carregaTipoEvento();
            }
        }

        private void carregaTipoEvento()
        {
            using (ARCOS_Entities enntity = new ARCOS_Entities())
            {
                List<TIPO_EVENTO> lista = enntity.TIPO_EVENTO.ToList();
                ddlTipoEvento.DataTextField = "NOME";
                ddlTipoEvento.DataValueField = "ID";
                ddlTipoEvento.DataSource = lista;
                ddlTipoEvento.DataBind();
                ddlTipoEvento.Items.Insert(0, "");
            }
        }

        private void carregarEntidade()
        {
            using (ARCOS_Entities enntity = new ARCOS_Entities())
            {
                List<ENTIDADE> lista = enntity.ENTIDADE.ToList();
                ddlEntidade.DataTextField = "NOME";
                ddlEntidade.DataValueField = "ID";
                ddlEntidade.DataSource = lista;
                ddlEntidade.DataBind();
                ddlEntidade.Items.Insert(0, "");
            }
        }
    }
}
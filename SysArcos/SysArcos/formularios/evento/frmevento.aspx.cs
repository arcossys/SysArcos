using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class frmevento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Data_Atual = DateTime.Today.ToString();
            if (!IsPostBack)
            {       if (txtDataInicio.Text != Data_Atual)
                {
                    btnSalvar.Enabled = true;
                }
            else
                {
                    btnSalvar.Enabled = false;
                }
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
                List<ENTIDADE> lista = enntity.ENTIDADE.
                    Where(linha=>linha.ATIVA.Equals(true)).
                    OrderBy(linha=>linha.NOME).ToList();
                ddlEntidade.DataTextField = "NOME";
                ddlEntidade.DataValueField = "ID";
                ddlEntidade.DataSource = lista;
                ddlEntidade.DataBind();
                ddlEntidade.Items.Insert(0, "");
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscaevento.aspx");
        }

        protected void txtDataInicio_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {       
        }
    }
}
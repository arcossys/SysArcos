using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos.formularios.doacao
{
    public partial class frmdoacao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (ARCOS_Entities entities = new ARCOS_Entities())
                {
                    carregaDoador(entities);
                    carregaEntidade(entities);
                    String ID = Request.QueryString["ID"];
                    if ((ID != null) && (!ID.Equals("")))
                    {
                        DOACAO u = entities.DOACAO.FirstOrDefault(x => x.ID.Equals(ID));
                        if (u != null)
                        {
                            string ID_CONVERT = ID.ToString();
                        }
                    }
                }
            }
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscadoacao.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        private void carregaEntidade(ARCOS_Entities conn)
        {
            List<ENTIDADE> list = conn.ENTIDADE.OrderBy(x => x.NOME).ToList();
            ddlEntidade.DataTextField = "NOME";//Carrega o campo que será mostrado
            ddlEntidade.DataValueField = "ID";//Carrega Primary Key
            ddlEntidade.DataSource = list;
            ddlEntidade.DataBind();
            ddlEntidade.Items.Insert(0, "");
        }

        private void carregaDoador(ARCOS_Entities conn)
        {
            List<DOADOR> list = conn.DOADOR.OrderBy(x => x.NOME).ToList();
            ddlDoador.DataTextField = "NOME";//Carrega o campo que será mostrado
            ddlDoador.DataValueField = "ID";//Carrega Primary Key
            ddlDoador.DataSource = list;
            ddlDoador.DataBind();
            ddlDoador.Items.Insert(0, "");
        }
    }
}
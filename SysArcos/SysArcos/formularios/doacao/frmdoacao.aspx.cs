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
                //Carregar aqui
                //carregarEntidade();
                //carregarDoar();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscadoacao.aspx");
        }

    }
}
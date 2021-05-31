using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos.formularios.doacao
{
    public partial class frmbuscadoacao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmdoacao.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos
{
    public partial class frmfornecedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscafornecedor.aspx");
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmvoluntariar.aspx");
        }

        protected void btnRemover_Click(object sender, EventArgs e)
        {
            ARCOS_Entities conexao = new ARCOS_Entities();

            int IDSelecionado = Convert.ToInt32(grid.SelectedValue.ToString());

            VOLUNTARIAR aluno = conexao.VOLUNTARIAR.FirstOrDefault(
                    linha => linha.ID.ToString().Equals(IDSelecionado.ToString())
                    );

            conexao.VOLUNTARIAR.Remove(aluno);

            conexao.SaveChanges();

            atualizaGrid(conexao);
        }

        private void atualizaGrid(ARCOS_Entities conexao)
        {
            var lista = conexao.VOLUNTARIAR.ToList();
            grid.DataSource = lista;
            grid.DataBind();
        }
    }
}
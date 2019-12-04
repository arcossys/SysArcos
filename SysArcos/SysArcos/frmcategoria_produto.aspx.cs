using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoArcos
{
    public partial class frmcategoria_produto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {
            txtcategoria.ReadOnly = false;
        }

        protected void btncadastrar_Click(object sender, EventArgs e)
        {
            ARCOS_Entities entity = GerConnetion.get(HttpContext.Current);

            CATEGORIA_PRODUTO categoria = null;

            if (txtcategoria.Text == "")
            {
                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
            }
            else
            {
                categoria = new CATEGORIA_PRODUTO();

                categoria.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;
                categoria.DESCRICAO = txtcategoria.Text;

                entity.CATEGORIA_PRODUTO.Add(categoria);

                Response.Write("<script>alert('Cadastrado Com Sucesso!');</script>");
            }
            txtcategoria.Text = string.Empty; 
            entity.SaveChanges();

        }

        protected void btnexcluir_Click(object sender, EventArgs e)
        {
            CATEGORIA_PRODUTO categoria = new CATEGORIA_PRODUTO();

            if (GridView1.SelectedValue != null)
            {
              ARCOS_Entities entities = GerConnetion.get(HttpContext.Current);
              GridView1.DataSource = null;
              GridView1.DataBind();
              GridView1.SelectedIndex = -1;
              Response.Write("<script>alert('Removido com sucesso!');</script>");//
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            
        }
    }
}
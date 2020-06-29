using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class frmcategoria_produto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String ID = Request.QueryString["id"];
                if (ID != null)
                {
                    using (ARCOS_Entities entities = new ARCOS_Entities())
                    {
                        CATEGORIA_PRODUTO c = entities.CATEGORIA_PRODUTO.FirstOrDefault(x => x.ID.Equals(ID));
                        if (c != null)
                        {
                            CATEGORIA_PRODUTO cat = entities.CATEGORIA_PRODUTO.FirstOrDefault(x => x.ID.ToString().Equals(ID));
                            txtcategoria.Text = cat.DESCRICAO;
                            lblID.Text = cat.ID.ToString();
                            lblAcao.Text = "Alterando";
                        }
                        else
                        {
                            lblAcao.Text = "NOVO";
                        }
                    }
                }
                else
                {
                    lblAcao.Text = "NOVO";
                }
            }
        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {
            limpar();
        }

        protected void btncadastrar_Click(object sender, EventArgs e)
        {
            using (ARCOS_Entities entity = new ARCOS_Entities())
            {

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
        }

        private void limpar()
        {
            txtcategoria.Text = string.Empty;
            lblAcao.Text = "NOVO";
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscacategoria_produto.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoArcos
{
    public partial class frmproduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

              if (!IsPostBack)
            {
                //Carregar Categoria
                ARCOS_Entities entities = GerConnetion.get(HttpContext.Current);
                if (entities != null)
                {
                    carregarCategoria();

                    String descricao = Request.QueryString["descricao"];
                    if ((descricao != null) && (!descricao.Equals("")))
                    {

                        PRODUTO u = entities.PRODUTO.FirstOrDefault(x => x.DESCRICAO.Equals(descricao));
                        if (u != null)
                        {

                            lblID.Text = u.ID.ToString();
                            txt_descricao.Text = u.DESCRICAO;
                            txt_especificacao.Text = u.ESPECIFICACOES;
                            txt_unidade.Text = u.UNIDADE;
                            dlCategoria.SelectedValue = u.CATEGORIA_PRODUTO.ID.ToString();

                            lblAcao.Text = "ALTERANDO";
                        }

                    }
                }
            }

           
        }

        protected void btn_cadastrar_Click(object sender, EventArgs e)
        {
            if (txt_descricao.Text == "" || txt_especificacao.Text == "" || txt_unidade.Text == "" )
            {
                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
            }
            else
            {
                ARCOS_Entities entity = GerConnetion.get(HttpContext.Current);

                PRODUTO produto = null;
            

                if (lblAcao.Text.Equals("NOVO"))
                {
                    produto = new PRODUTO();
                    produto.DESCRICAO = txt_descricao.Text;   
                    
                    produto.ESPECIFICACOES = txt_especificacao.Text;
                    produto.UNIDADE = txt_unidade.Text;
                    produto.ID_CATEGORIA = Convert.ToInt32(dlCategoria.SelectedValue);
                    produto.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;
                    
                    entity.PRODUTO.Add(produto);
                }
                else
                {
                    produto = entity.PRODUTO.FirstOrDefault(x => x.ID.ToString().Equals(lblID.Text));


                    produto.DESCRICAO = txt_descricao.Text;
                    produto.ESPECIFICACOES = txt_especificacao.Text;
                    produto.UNIDADE = txt_unidade.Text;
                    produto.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;                    
                    produto.ID_CATEGORIA = Convert.ToInt32(dlCategoria.SelectedValue);

                    entity.Entry(produto);
                }
                limpar();
                entity.SaveChanges();

                Response.Write("<script>alert('Produto salvo com Sucesso!');</script>");

            }
        }

        private void limpar()
        {
            txt_descricao.Text = string.Empty;
            txt_especificacao.Text = string.Empty;
            txt_unidade.Text = string.Empty;           
            lblAcao.Text = "NOVO";
        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {

            txt_descricao.ReadOnly = false;
            limpar();

        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscaproduto.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {



        }

        private void carregarCategoria()
        {
            CATEGORIA_PRODUTO produto_blank = new CATEGORIA_PRODUTO();
            produto_blank.DESCRICAO = "";

            ARCOS_Entities entity = GerConnetion.get(HttpContext.Current);
            List<CATEGORIA_PRODUTO> lista = entity.CATEGORIA_PRODUTO.ToList();
            lista.Insert(0, produto_blank);
            dlCategoria.DataSource = lista;
            dlCategoria.DataTextField = "DESCRICAO";
            dlCategoria.DataValueField = "ID";
            dlCategoria.DataBind();
        }
    }
}
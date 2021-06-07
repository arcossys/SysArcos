using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class frmassistencia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (ARCOS_Entities entities = new ARCOS_Entities())
                {
                    carregaEntidade(entities);
                    carregaAssistido(entities);
                    String descricao = Request.QueryString["descricao"];
                    if ((descricao != null) && (!descricao.Equals("")))
                    {
                        ASSISTENCIA u = entities.ASSISTENCIA.FirstOrDefault(x => x.DESCRICAO.Equals(descricao));
                        if (u != null)
                        {
                            txt_descricao.Text = u.DESCRICAO;
                            u.DATA_INICIAL = Convert.ToDateTime(txt_inicial.Text);
                            u.DATA_FINAL = Convert.ToDateTime(txt_final.Text);
                            txt_observacao.Text = u.OBSERVACOES;
                            u.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;
                        }
                    }
                }
            }

        }

        protected void btn_cadastrar_Click(object sender, EventArgs e)
        {

            if (txt_inicial.Text == "" || txt_final.Text == "" || txt_descricao.Text == "" || txt_observacao.Text == "")

            {
                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
            }
            else
            {
                try
                {
                    using (ARCOS_Entities entity = new ARCOS_Entities())
                    {

                        ASSISTENCIA assistencia = null;

                        if (lblAcao.Text.Equals("NOVO"))
                        {
                            assistencia = new ASSISTENCIA();
                            assistencia.DATA_INICIAL = DateTime.Now;
                            assistencia.DATA_FINAL = DateTime.Now;
                            assistencia.DESCRICAO = txt_descricao.Text;
                            assistencia.OBSERVACOES = txt_observacao.Text;
                            assistencia.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;



                        }
                        else
                        {
                            assistencia = entity.ASSISTENCIA.FirstOrDefault(x => x.DESCRICAO.Equals(txt_descricao.Text));

                            assistencia = new ASSISTENCIA();
                            assistencia.DATA_INICIAL = DateTime.Now;
                            assistencia.DATA_FINAL = DateTime.Now;
                            assistencia.DESCRICAO = txt_descricao.Text;
                            assistencia.OBSERVACOES = txt_observacao.Text;
                            assistencia.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;
                        }
                        limpar();
                        entity.SaveChanges();

                        Response.Write("<script>alert('Usuario salvo com Sucesso!');</script>");
                    }
                }
                catch
                {
                    Response.Write("<script>alert('Registro não pode ser salvo!');</script>");
                }
            }
        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {
            txt_inicial.Text = string.Empty;
            txt_final.Text = string.Empty;
            txt_descricao.Text = string.Empty;
            txt_observacao.Text = string.Empty;
        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscaassistencia.aspx");
        }

        private void limpar()
        {
            txt_inicial.Text = string.Empty;
            txt_final.Text = string.Empty;
            txt_descricao.Text = string.Empty;
            txt_observacao.Text = string.Empty;
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

        private void carregaAssistido(ARCOS_Entities conn)
        {
            List<ASSISTIDO> list = conn.ASSISTIDO.OrderBy(x => x.NOME).ToList();
            ddlAssistido.DataTextField = "NOME";//Carrega o campo que será mostrado
            ddlAssistido.DataValueField = "ID";//Carrega Primary Key
            ddlAssistido.DataSource = list;
            ddlAssistido.DataBind();
            ddlAssistido.Items.Insert(0, "");
        }
    }
}
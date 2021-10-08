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
                    carregaTipoAssistencia(entities);
                    String ID = Request.QueryString["ID"];
                    if ((ID != null) && (!ID.Equals("")))
                    {
                        txtID.Text = ID;
                        ASSISTENCIA u = entities.ASSISTENCIA.FirstOrDefault(x => x.ID.ToString().Equals(ID));
                        if (u != null)
                        {
                            txt_inicial.Text = u.DATA_INICIAL.ToString("dd/MM/yyyy");
                            txt_final.Text = ((DateTime)u.DATA_FINAL).ToString("dd/MM/yyyy");
                            txt_observacao.Text = u.OBSERVACOES;
                            ddlAssistido.SelectedValue = u.ASSISTIDO.ID.ToString();
                            ddlEntidade.SelectedValue = u.ENTIDADE.ID.ToString();
                            ddlTipoAssistencia.SelectedValue = u.TIPO_ASSISTENCIA.ID.ToString();
                        }
                    }
                    else
                    {
                        limpar();
                    }
                }
            }

        }

        protected void btn_cadastrar_Click(object sender, EventArgs e)
        {

            if (txt_inicial.Text == "" || txt_final.Text == "" || txt_observacao.Text == "")

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
                        }
                        else
                        {
                            assistencia = entity.ASSISTENCIA.FirstOrDefault(x => x.ID.Equals(txtID.Text));
                        }
                        assistencia.DATA_INICIAL = DateTime.ParseExact(txt_inicial.Text, "dd/MM/yyyy", null);
                        assistencia.DATA_FINAL = DateTime.ParseExact(txt_final.Text, "dd/MM/yyyy", null);
                        assistencia.OBSERVACOES = txt_observacao.Text;
                        assistencia.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;
                        assistencia.ENTIDADE = entity.ENTIDADE.FirstOrDefault(linha=>linha.ID.ToString().Equals(ddlEntidade.SelectedValue));
                        assistencia.ASSISTIDO = entity.ASSISTIDO.FirstOrDefault(linha=>linha.ID.ToString().Equals(ddlAssistido.SelectedValue));
                        assistencia.TIPO_ASSISTENCIA = entity.TIPO_ASSISTENCIA.FirstOrDefault(linha => linha.ID.ToString().Equals(ddlTipoAssistencia.SelectedValue));
                        if (lblAcao.Text.Equals("NOVO"))
                        {
                            entity.ASSISTENCIA.Add(assistencia);
                        }
                        else
                        {
                            entity.Entry(assistencia);
                        }
                        entity.SaveChanges();
                        limpar();

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
            txt_observacao.Text = string.Empty;
            ddlEntidade.SelectedIndex = 0;
        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscaassistencia.aspx");
        }

        private void limpar()
        {
            if (ddlEntidade.Items.Count == 2)
            {
                ddlEntidade.SelectedIndex = 1;
            }
            txt_inicial.Text = DateTime.Now.ToString("dd/MM/yyyy");
            txt_final.Text = DateTime.Now.ToString("dd/MM/yyyy");
            txt_observacao.Text = string.Empty;
            ddlAssistido.SelectedIndex = 0;
            ddlTipoAssistencia.SelectedIndex = 0;
        }

        private void carregaEntidade(ARCOS_Entities conn)
        {
            String login = (string)Session["usuariologado"]; //Verificando usuário logado
            USUARIO usuario = conn.USUARIO.Where(linha => linha.LOGIN.Equals(login)).FirstOrDefault();
            List<ENTIDADE> list = new List<ENTIDADE>();
            if (usuario.ADM)
                list.AddRange(conn.ENTIDADE.OrderBy(x => x.NOME).ToList());
            else
                list.AddRange(conn.ENTIDADE.Where(linha=>linha.LOGIN_USUARIO_ADMINISTRADOR.Equals(login)).OrderBy(x => x.NOME).ToList());
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

        private void carregaTipoAssistencia(ARCOS_Entities conn)
        {
            List<TIPO_ASSISTENCIA> list = conn.TIPO_ASSISTENCIA.OrderBy(x => x.DESCRICAO).ToList();
            ddlTipoAssistencia.DataTextField = "DESCRICAO";//Carrega o campo que será mostrado
            ddlTipoAssistencia.DataValueField = "ID";//Carrega Primary Key
            ddlTipoAssistencia.DataSource = list;
            ddlTipoAssistencia.DataBind();
            ddlTipoAssistencia.Items.Insert(0, "");
        }
    }
}
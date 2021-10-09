using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class frmvoluntariado1 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (ARCOS_Entities entities = new ARCOS_Entities())
                {
                    carregarEntidades(entities);
                    int id_vol = Convert.ToInt32(Request.QueryString["id"]);
                    if ((id_vol != 0) && (!id_vol.Equals("")))
                    {
                        VOLUNTARIADO v = entities.VOLUNTARIADO.FirstOrDefault(x => x.ID.Equals(id_vol));
                        if (entities != null)
                        {
                            lbl_acao.Text = "ALTERANDO";
                            txtDataini.Text = v.DATA_INICIAL.ToString("yyyy-MM-dd");
                            txtDatafinal.Text = (v.DATA_FINAL.HasValue ? v.DATA_FINAL.Value.ToString("yyyy-MM-dd") : "");
                            txtDesc.Text = v.DESCRICAO;
                            txtObser.Text = v.OBSERVACAO;
                            ddlEntidade.SelectedValue = v.ID_ENTIDADE.ToString();
                        }
                    }
                }
                
            }
        }

        private void carregarEntidades(ARCOS_Entities entities)
        {
            List<ENTIDADE> lista = entities.ENTIDADE.Where(x => x.ATIVA == true).OrderBy(x => x.NOME).ToList();
            ddlEntidade.DataTextField = "NOME";
            ddlEntidade.DataValueField = "ID";
            ddlEntidade.DataSource = lista;
            ddlEntidade.DataBind();
            ddlEntidade.Items.Insert(0, "");
        }

        private void limpar()
        {
            ddlEntidade.SelectedIndex = 0;
            txtDataini.Text = string.Empty;
            txtDatafinal.Text = string.Empty;
            txtDesc.Text = string.Empty;
            txtObser.Text = string.Empty;
            lbl_acao.Text = "NOVO";
        }

        protected void btnBusca_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscavoluntariado.aspx");
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            if (txtDataini.Text == "" || txtDatafinal.Text == "" || txtDesc.Text == "" ||
                 txtObser.Text == "")
            {
                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
            }
            else
            {
                try
                {
                    using (ARCOS_Entities entity = new ARCOS_Entities())
                    {

                        VOLUNTARIADO data = null;

                        if (lbl_acao.Text.Equals("NOVO"))
                        {
                            data = new VOLUNTARIADO();
                            data.ID_ENTIDADE = Convert.ToInt32(ddlEntidade.SelectedValue);
                            data.DATA_INICIAL = DateTime.ParseExact(txtDataini.Text, "dd/MM/yyyy", null);
                            data.DATA_FINAL = DateTime.ParseExact(txtDatafinal.Text, "dd/MM/yyyy", null);
                            data.DESCRICAO = txtDesc.Text;
                            data.OBSERVACAO = txtObser.Text;
                            data.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;
                            entity.VOLUNTARIADO.Add(data);


                            entity.SaveChanges();

                            Response.Write("<script>alert('Voluntariado salvo com Sucesso!');</script>");
                        }
                        else
                        {
                            int id_vol = Convert.ToInt32(Request.QueryString["id"]);
                            data = entity.VOLUNTARIADO.FirstOrDefault(x => x.ID.Equals(id_vol));

                            data.ID_ENTIDADE = Convert.ToInt32(ddlEntidade.SelectedValue);
                            data.DATA_INICIAL = DateTime.Now;
                            data.DATA_FINAL = DateTime.Now;
                            data.DESCRICAO = txtDesc.Text;
                            data.OBSERVACAO = txtObser.Text;
                            data.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;
                            entity.Entry(data);

                            Response.Write("<script>alert('Voluntariado alterado com Sucesso!');</script>");
                        }
                        entity.SaveChanges();
                        limpar();
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
            limpar();
        }

    }
}
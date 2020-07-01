using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos.formularios.Voluntariar
{
    public partial class frmvoluntariar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String descricao = Request.QueryString["descricao"];
            if ((descricao != null) && (!descricao.Equals("")))
            {
                using (ARCOS_Entities entities = new ARCOS_Entities())
                {
                    VOLUNTARIAR u = entities.VOLUNTARIAR.FirstOrDefault(x => x.DESCRICAO.Equals(descricao));
                    if (u != null)
                    {
                        Txt_vdescricao.Text = u.DESCRICAO;
                        u.DATA_INICIAL = Convert.ToDateTime(Txt_vdatainicial.Text);
                        u.DATA_FINAL = Convert.ToDateTime(Txt_vdatafinal.Text);
                        Txt_vobservacao.Text = u.OBSERVACAO;
                        u.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;
                    }
                }
            }
        }

        protected void Btn_Salvar_Click(object sender, EventArgs e)
        {

            if (Txt_vdatainicial.Text == "" || Txt_vdatafinal.Text == "" || Txt_vdescricao.Text == "" || Txt_vobservacao.Text == "" )

            {
                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
            }
            else
            {
                try
                {
                    using (ARCOS_Entities entity = new ARCOS_Entities())
                    {

                        VOLUNTARIAR voluntariar = null;

                        if (lblAcao.Text.Equals("NOVO"))
                        {
                            VOLUNTARIAR volunt = new VOLUNTARIAR();
                            volunt.ID_VOLUNTARIO = Convert.ToInt32(Ddl_voluntario.SelectedValue.ToString());
                            volunt.ID_VOLUNTARIADO = Convert.ToInt32(Ddl_vvoluntariado.SelectedValue.ToString());
                            volunt.DATA_INICIAL = DateTime.Now;
                            volunt.DATA_FINAL = DateTime.Now;
                            volunt.DESCRICAO = Txt_vdescricao.Text;
                            volunt.OBSERVACAO = Txt_vobservacao.Text;
                            volunt.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;



                        }
                        else
                        {
                            voluntariar = entity.VOLUNTARIAR.FirstOrDefault(x => x.DESCRICAO.Equals(Txt_vdescricao.Text));

                            VOLUNTARIAR volunt = new VOLUNTARIAR();
                            volunt.ID_VOLUNTARIO = Convert.ToInt32(Ddl_voluntario.SelectedValue.ToString());
                            volunt.ID_VOLUNTARIADO = Convert.ToInt32(Ddl_vvoluntariado.SelectedValue.ToString());
                            volunt.DATA_INICIAL = DateTime.Now;
                            volunt.DATA_FINAL = DateTime.Now;
                            volunt.DESCRICAO = Txt_vdescricao.Text;
                            volunt.OBSERVACAO = Txt_vobservacao.Text;
                            volunt.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;
                        }
                        limpar();
                        entity.SaveChanges();

                        Response.Write("<script>alert('Voluntariar salvo com Sucesso!');</script>");
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
            Ddl_voluntario.Text = string.Empty;
            Ddl_vvoluntariado.Text = string.Empty;
            Txt_vdatainicial.Text = string.Empty;
            Txt_vdatafinal.Text = string.Empty;
            Txt_vdescricao.Text = string.Empty;
            Txt_vobservacao.Text = string.Empty;
        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscavoluntariar.aspx");
        }
        private void limpar()
        {
            Ddl_voluntario.Text = string.Empty;
            Ddl_vvoluntariado.Text = string.Empty;
            Txt_vdatainicial.Text = string.Empty;
            Txt_vdatafinal.Text = string.Empty;
            Txt_vdescricao.Text = string.Empty;
            Txt_vobservacao.Text = string.Empty;
        }

        private void CarregaVoluntario(ARCOS_Entities entities)
        {
            var lista = entities.VOLUNTARIO.ToList();
            Ddl_voluntario.DataSource = lista;
            Ddl_voluntario.DataValueField = "NOME";
            Ddl_voluntario.DataTextField = "ID";
        }
        private void CarregaVoluntariado(ARCOS_Entities entities)
        {
            var lista = entities.VOLUNTARIADO.ToList();
            Ddl_vvoluntariado.DataSource = lista;
            Ddl_vvoluntariado.DataValueField = "NOME";
            Ddl_vvoluntariado.DataTextField = "ID";
        }

        protected void btn_cadastrar_Click(object sender, EventArgs e)
        {

        }
    }
}
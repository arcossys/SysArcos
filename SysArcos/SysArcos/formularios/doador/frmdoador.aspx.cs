using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoArcos
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String ID = Request.QueryString["ID"];
                if ((ID != null) && (!ID.Equals("")))
                {
                    using (ARCOS_Entities entities = new ARCOS_Entities())
                    {
                        DOADOR u = entities.DOADOR.FirstOrDefault(x => x.ID.ToString().Equals(ID));
                        if (u != null)
                        {
                            lblID.Text = u.ID.ToString();
                            txt_nomedoador.Text = u.NOME;
                            txt_logradouro.Text = u.LOGRADOURO;
                            txt_numero.Text = u.NUMERO;
                            txt_bairro.Text = u.BAIRRO;
                            txt_CEP.Text = u.CEP;
                            txt_cidade.Text = u.CIDADE;
                            drp_estado.Text = u.ESTADO;
                            txt_disponibilidade.Text = u.DISPONIBILIDADE;
                            txt_tipodoacao.Text = u.TIPO_DOACAO;
                            cb_ativo.Checked = u.ATIVO;

                            lblAcao.Text = "ALTERANDO";
                        }
                    }
                }
            }
        }

        protected void btnCadastra_Click(object sender, EventArgs e)
        {
            if (txt_nomedoador.Text == "" || txt_logradouro.Text == "" || txt_numero.Text == "" || txt_bairro.Text == "" || txt_CEP.Text == ""
                || txt_cidade.Text == "" || drp_estado.Text == "" || txt_disponibilidade.Text == "" || txt_tipodoacao.Text == "")
            {
                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
            }
            else
            {
                using (ARCOS_Entities entity = new ARCOS_Entities())
                {
                    DOADOR doador = new DOADOR();


                    if (lblAcao.Text.Equals("NOVO"))
                    {
                        doador = new DOADOR();
                        doador.NOME = txt_nomedoador.Text;
                        doador.LOGRADOURO = txt_logradouro.Text;
                        doador.CEP = txt_CEP.Text;
                        doador.CIDADE = txt_cidade.Text;
                        doador.BAIRRO = txt_bairro.Text;
                        doador.NUMERO = txt_numero.Text;
                        doador.DISPONIBILIDADE = txt_disponibilidade.Text;
                        doador.ESTADO = drp_estado.SelectedValue;
                        doador.TIPO_DOACAO = txt_tipodoacao.Text;
                        doador.ATIVO = cb_ativo.Checked;
                        doador.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;
                        entity.DOADOR.Add(doador);
                    }
                    else
                    {
                        doador = entity.DOADOR.FirstOrDefault(x => x.ID.ToString().Equals(lblID.Text));

                        doador.NOME = txt_nomedoador.Text;
                        doador.LOGRADOURO = txt_logradouro.Text;
                        doador.CEP = txt_CEP.Text;
                        doador.CIDADE = txt_cidade.Text;
                        doador.BAIRRO = txt_bairro.Text;
                        doador.NUMERO = txt_numero.Text;
                        doador.DISPONIBILIDADE = txt_disponibilidade.Text;
                        doador.ESTADO = drp_estado.SelectedValue;
                        doador.TIPO_DOACAO = txt_tipodoacao.Text;
                        doador.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;
                        doador.ATIVO = cb_ativo.Checked;
                        entity.Entry(doador);
                    }
                    entity.SaveChanges();
                    limpar();

                    Response.Write("<script>alert('Doador salvo com Sucesso!');</script>");
                }
            }
        }
        protected void btnConsulta_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscadoador.aspx");
        }
        private void limpar()
        {
            txt_nomedoador.Text = string.Empty;
            txt_logradouro.Text = string.Empty;
            txt_bairro.Text = string.Empty;
            txt_CEP.Text = string.Empty;
            txt_disponibilidade.Text = string.Empty;
            txt_numero.Text = string.Empty;
            txt_cidade.Text = string.Empty;
            txt_tipodoacao.Text = string.Empty;
            drp_estado.SelectedValue = null;
            cb_ativo.Checked = true;
            lblAcao.Text = "NOVO";
        }

        protected void btn_novo_Click(object sender, EventArgs e)
        {
            limpar();
        }
    }
}
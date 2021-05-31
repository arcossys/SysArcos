using System;
using System.Collections.Generic;
using System.Collections;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class frmassistido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                using (ARCOS_Entities entities = new ARCOS_Entities())
                {
                    carregarAssistidoResponsavel(entities);
                    carregarEstadoCivil(entities);
                    carregarEntidades(entities);
                    String ID = Request.QueryString["ID"];
                    if ((ID != null) && (!ID.Equals("")))
                    {
                        lblID.Text = ID;
                        ASSISTIDO u = entities.ASSISTIDO.FirstOrDefault(x => x.ID.ToString().Equals(ID));
                        if (u != null)
                        {
                            preencheCampos(u);
                            lblAcao.Text = "ALTERANDO";
                        }
                    }
                }
            }
        }
        protected void btnCadastra_Click(object sender, EventArgs e)
        {


        }

        private void limpar()
        {
            ddlEntidade.SelectedIndex = -1;
            txtNomeAssistido.Text = string.Empty;
            txtApelido.Text = string.Empty;
            txtDataNascimento.Text = string.Empty;
            ddlEstadoCivil.SelectedIndex = -1;
            txtCPF.Text = string.Empty;
            txtRG.Text = string.Empty;
            txtNIS.Text = string.Empty;
            txtProfissao.Text = string.Empty;
            txtTelefone.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtLogradouro.Text = string.Empty;
            txtNumero.Text = string.Empty;
            txtBairro.Text = string.Empty;
            txtCEP.Text = string.Empty;
            txtCidade.Text = string.Empty;
            drpEstado.SelectedValue = null;
            txtParentescoAssistido.Text = string.Empty;
            ddlResponsavelAssistido.Text = string.Empty;
            lblAcao.Text = "NOVO";
            lblID.Text = string.Empty;
        }

        protected void btnConsulta_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscaassistido.aspx");
        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {

            txtNomeAssistido.ReadOnly = false;
            limpar();

        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscaassistido.aspx");
        }

        protected void btn_cadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtNomeAssistido.Text == "" || txtApelido.Text == "" || txtCPF.Text == ""
                      || txtDataNascimento.Text == "" || txtLogradouro.Text == "" || txtNumero.Text == ""
                      || txtBairro.Text == "" || txtCEP.Text == "" || txtCidade.Text == ""
                      || drpEstado.Text == "" || ddlEntidade.Text == "")
                {
                    Response.Write("<script>alert('Há campos obrigatórios não preenchidos!');</script>");
                }
                else
                {
                    
                    using (ARCOS_Entities entity = new ARCOS_Entities())
                    {
                        ASSISTIDO assistido = null;
                        if (lblAcao.Text.Equals("NOVO"))
                            assistido = new ASSISTIDO();
                        else
                        {
                            assistido = entity.ASSISTIDO.FirstOrDefault(x => x.ID.ToString().Equals(lblID.Text));
                            String usuariologado = (String)Session["usuariologado"];
                            USUARIO usuario = entity.USUARIO
                                .FirstOrDefault(linha => linha.LOGIN.Equals(usuariologado));
                            if (!usuario.ENTIDADE.Contains(assistido.ENTIDADE))
                            {
                                Response.Write("<script>alert('Seu usuário não possui permissão para essa ação!');</script>");
                                return;
                            }
                        }

                        assistido.ID_ENTIDADE = Convert.ToInt32(ddlEntidade.SelectedValue);
                        assistido.NOME = txtNomeAssistido.Text;
                        assistido.APELIDO = txtApelido.Text;
                        assistido.DATA_NASCIMENTO = Convert.ToDateTime(txtDataNascimento.Text);
                        assistido.ID_ESTADO_CIVIL = Convert.ToInt32(ddlEstadoCivil.SelectedValue);
                        assistido.CPF = txtCPF.Text;
                        assistido.RG = txtRG.Text;
                        assistido.NUM_NIS = txtNIS.Text;
                        assistido.PROFISSAO = txtProfissao.Text;
                        assistido.TELEFONE = txtTelefone.Text;
                        assistido.EMAIL = txtEmail.Text;
                        assistido.LOGRADOURO = txtLogradouro.Text;
                        assistido.NUMERO = txtNumero.Text;
                        assistido.BAIRRO = txtBairro.Text;
                        assistido.CEP = txtCEP.Text;
                        assistido.CIDADE = txtCidade.Text;
                        assistido.ESTADO = drpEstado.Text;
                        assistido.PARENTESCO_ASSISTIDO_RESPONSAVEL = txtParentescoAssistido.Text;
                        if (ddlResponsavelAssistido.Text.Equals("ASSISTIDO RESPONSÁVEL"))
                            assistido.ID_ASSISTIDO_RESPONSAVEL = null;
                        else
                            assistido.ID_ASSISTIDO_RESPONSAVEL = Convert.ToInt32(ddlResponsavelAssistido.SelectedValue);
                        assistido.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;

                        if (lblAcao.Text.Equals("NOVO"))
                            entity.ASSISTIDO.Add(assistido);
                        else
                            entity.Entry(assistido);

                        limpar();
                        entity.SaveChanges();

                        Response.Write("<script>alert('Usuario salvo!');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Registro não pode ser salvo!');</script>");
            }
        }

        private void carregarEstadoCivil(ARCOS_Entities conn)
        {
            List<ESTADO_CIVIL> lista = conn.ESTADO_CIVIL
                .OrderBy(linha => linha.DESCRICAO)
                .ToList();
            ddlEstadoCivil.DataTextField = "DESCRICAO";
            ddlEstadoCivil.DataValueField = "ID";
            ddlEstadoCivil.DataSource = lista;
            ddlEstadoCivil.DataBind();
            ddlEstadoCivil.Items.Insert(0, "");
        }

        private void carregarAssistidoResponsavel(ARCOS_Entities conn)
        {
            List<ASSISTIDO> lista = conn.ASSISTIDO
                .OrderBy(linha => linha.NOME)
                .ToList();
            ddlResponsavelAssistido.DataTextField = "NOME";
            ddlResponsavelAssistido.DataValueField = "ID";
            ddlResponsavelAssistido.DataSource = lista;
            ddlResponsavelAssistido.DataBind();
            ddlResponsavelAssistido.Items.Insert(0, "ASSISTIDO RESPONSÁVEL");
            ddlResponsavelAssistido.Items.Insert(0, "");
        }

        private void carregarEntidades(ARCOS_Entities conn)
        {
            String loginLogado = (String)Session["usuariologado"];
            if (loginLogado != null)
            {
                USUARIO u = conn.USUARIO.FirstOrDefault(linha => linha.LOGIN.Equals(loginLogado));

                List<ENTIDADE> lista = null;
                if (u.ADM)
                {
                    lista = conn.ENTIDADE
                        .Where(linha=>linha.ATIVA == true)
                        .OrderBy(linha => linha.NOME)
                        .ToList();
                }
                else
                {
                    lista = u.ENTIDADE
                        .Where(linha=>linha.ATIVA)
                        .OrderBy(linha => linha.NOME)
                        .ToList();
                }
                ddlEntidade.DataTextField = "NOME";
                ddlEntidade.DataValueField = "ID";
                ddlEntidade.DataSource = lista;
                ddlEntidade.DataBind();
                ddlEntidade.Items.Insert(0, "");
            }
        }

        private void preencheCampos(ASSISTIDO u)
        {
            txtNomeAssistido.Text = u.NOME;
            txtApelido.Text = u.APELIDO;


            DateTime dnsc = u.DATA_NASCIMENTO.Value;
            txtDataNascimento.Text = dnsc.ToString("dd/MM/yyyy");
            ddlEntidade.SelectedValue = u.ENTIDADE.ID.ToString();
            ddlEstadoCivil.SelectedValue = u.ID_ESTADO_CIVIL.ToString();
            txtCPF.Text = u.CPF;
            txtRG.Text = u.RG;
            txtNIS.Text = u.NUM_NIS;
            txtProfissao.Text = u.PROFISSAO;
            txtTelefone.Text = u.TELEFONE;
            txtEmail.Text = u.EMAIL;
            txtLogradouro.Text = u.LOGRADOURO;
            txtNumero.Text = u.NUMERO;
            txtBairro.Text = u.BAIRRO;
            txtCEP.Text = u.CEP;
            txtCidade.Text = u.CIDADE;
            drpEstado.Text = u.ESTADO;
            txtParentescoAssistido.Text = u.PARENTESCO_ASSISTIDO_RESPONSAVEL;
            if (u.ID_ASSISTIDO_RESPONSAVEL == null)
                ddlResponsavelAssistido.SelectedIndex = 1;
            else
                ddlResponsavelAssistido.SelectedValue = u.ID_ASSISTIDO_RESPONSAVEL.ToString();
        }
    }
}
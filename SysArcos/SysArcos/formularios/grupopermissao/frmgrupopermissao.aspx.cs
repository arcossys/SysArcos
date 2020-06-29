using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos.formularios.usuario
{
    public partial class frmgrupopermissao : System.Web.UI.Page
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
                        GRUPO_PERMISSAO gp = entities.GRUPO_PERMISSAO.
                            FirstOrDefault(x => x.ID.ToString().Equals(ID));
                        if (gp != null)
                        {
                            lblID.Text = ID;
                            txt_descricao.Text = gp.DESCRICAO;
                            lblAcao.Text = "ALTERANDO";
                            preenchePermissao(gp);
                        }
                    }

                }
            }
        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {
            limpar();
        }

        protected void btn_cadastrar_Click(object sender, EventArgs e)
        {
            if (txt_descricao.Text == "")
            {
                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
            }
            else
            {
                try
                {
                    using (ARCOS_Entities entity = new ARCOS_Entities())
                    {
                        GRUPO_PERMISSAO gp = new GRUPO_PERMISSAO();


                        if (lblAcao.Text.Equals("NOVO"))
                        {
                            gp = new GRUPO_PERMISSAO();
                            gp.DESCRICAO = txt_descricao.Text;
                            atualizaPermissao(gp);
                            entity.GRUPO_PERMISSAO.Add(gp);
                        }
                        else
                        {
                            gp = entity.GRUPO_PERMISSAO.FirstOrDefault(x => x.ID.ToString().Equals(lblID.Text));
                            gp.DESCRICAO = txt_descricao.Text;
                            atualizaPermissao(gp);
                            entity.Entry(gp);
                        }
                        entity.SaveChanges();
                        limpar();

                        Response.Write("<script>alert('Grupo Permissão salvo com Sucesso!');</script>");
                    }
                }
                catch
                {
                    Response.Write("<script>alert('Registro não pode ser salvo!');</script>");
                }
            }
        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscagrupopermissao.aspx");
        }

        private void limpar()
        {
            lblAcao.Text = "NOVO";
            lblID.Text = string.Empty;
            txt_descricao.Text = string.Empty;

            tvPermissao.CollapseAll();
            tvPermissao.FindNode("Entidade/Entidade").Checked = false;
            tvPermissao.FindNode("Voluntario/Voluntarios").Checked = false;
            tvPermissao.FindNode("Voluntario/Voluntariar").Checked = false;
            tvPermissao.FindNode("Voluntario/Voluntariado").Checked = false;
            tvPermissao.FindNode("Usuario/Usuarios").Checked = false;
            tvPermissao.FindNode("Usuario/GrupoPermissao").Checked = false;
            tvPermissao.FindNode("Evento/Eventos").Checked = false;
            tvPermissao.FindNode("Evento/TiposEvento").Checked = false;
            tvPermissao.FindNode("Recurso/Recursos").Checked = false;
            tvPermissao.FindNode("Recurso/TiposRecurso").Checked = false;
            tvPermissao.FindNode("Fornecedor/Fornecedores").Checked = false;
            tvPermissao.FindNode("Fornecedor/Fornecimento").Checked = false;
            tvPermissao.FindNode("Estoque/Produtos").Checked = false;
            tvPermissao.FindNode("Estoque/TiposProduto").Checked = false;
            tvPermissao.FindNode("Doacao/Doacoes").Checked = false;
            tvPermissao.FindNode("Doacao/Doadores").Checked = false;
            tvPermissao.FindNode("Assistencia/Assistencias").Checked = false;
            tvPermissao.FindNode("Assistencia/Assistidos").Checked = false;
        }

        private void atualizaPermissao(GRUPO_PERMISSAO gp)
        {
            gp.PERM_ENTIDADE =  tvPermissao.FindNode("Entidade/Entidade").Checked;
            gp.PERM_VOLUNTARIOS = tvPermissao.FindNode("Voluntario/Voluntarios").Checked;
            gp.PERM_VOLUNTARIAR = tvPermissao.FindNode("Voluntario/Voluntariar").Checked;
            gp.PERM_VOLUNTARIADO = tvPermissao.FindNode("Voluntario/Voluntariado").Checked;
            gp.PERM_USUARIOS = tvPermissao.FindNode("Usuario/Usuarios").Checked;
            gp.PERM_GRUPOPERMISSAO = tvPermissao.FindNode("Usuario/GrupoPermissao").Checked; ;
            gp.PERM_EVENTO = tvPermissao.FindNode("Evento/Eventos").Checked;
            gp.PERM_TIPOEVENTO = tvPermissao.FindNode("Evento/TiposEvento").Checked;
            gp.PERM_RECURSO = tvPermissao.FindNode("Recurso/Recursos").Checked;
            gp.PERM_TIPORECURSO = tvPermissao.FindNode("Recurso/TiposRecurso").Checked;
            gp.PERM_FORNECEDOR = tvPermissao.FindNode("Fornecedor/Fornecedores").Checked ;
            gp.PERM_FORNECIMENTO = tvPermissao.FindNode("Fornecedor/Fornecimento").Checked;
            gp.PERM_PRODUTO = tvPermissao.FindNode("Estoque/Produtos").Checked;
            gp.PERM_TIPOPRODUTO = tvPermissao.FindNode("Estoque/TiposProduto").Checked;
            gp.PERM_DOACAO = tvPermissao.FindNode("Doacao/Doacoes").Checked;
            gp.PERM_DOADOR = tvPermissao.FindNode("Doacao/Doadores").Checked;
            gp.PERM_ASSISTENCIA = tvPermissao.FindNode("Assistencia/Assistencias").Checked; ;
            gp.PERM_ASSISTIDO = tvPermissao.FindNode("Assistencia/Assistidos").Checked; ;
        }

        private void preenchePermissao(GRUPO_PERMISSAO gp)
        {
            tvPermissao.FindNode("Entidade/Entidade").Checked = gp.PERM_ENTIDADE;
            tvPermissao.FindNode("Voluntario/Voluntarios").Checked = gp.PERM_VOLUNTARIOS;
            tvPermissao.FindNode("Voluntario/Voluntariar").Checked = gp.PERM_VOLUNTARIAR;
            tvPermissao.FindNode("Voluntario/Voluntariado").Checked = gp.PERM_VOLUNTARIADO;
            tvPermissao.FindNode("Usuario/Usuarios").Checked = gp.PERM_USUARIOS;
            tvPermissao.FindNode("Usuario/GrupoPermissao").Checked = gp.PERM_GRUPOPERMISSAO;
            tvPermissao.FindNode("Evento/Eventos").Checked = gp.PERM_EVENTO;
            tvPermissao.FindNode("Evento/TiposEvento").Checked = gp.PERM_TIPOEVENTO;
            tvPermissao.FindNode("Recurso/Recursos").Checked = gp.PERM_RECURSO;
            tvPermissao.FindNode("Recurso/TiposRecurso").Checked = gp.PERM_TIPORECURSO;
            tvPermissao.FindNode("Fornecedor/Fornecedores").Checked = gp.PERM_FORNECEDOR;
            tvPermissao.FindNode("Fornecedor/Fornecimento").Checked = gp.PERM_FORNECIMENTO;
            tvPermissao.FindNode("Estoque/Produtos").Checked = gp.PERM_PRODUTO;
            tvPermissao.FindNode("Estoque/TiposProduto").Checked = gp.PERM_TIPOPRODUTO;
            tvPermissao.FindNode("Doacao/Doacoes").Checked = gp.PERM_DOACAO;
            tvPermissao.FindNode("Doacao/Doadores").Checked = gp.PERM_DOADOR;
            tvPermissao.FindNode("Assistencia/Assistencias").Checked = gp.PERM_ASSISTENCIA; ;
            tvPermissao.FindNode("Assistencia/Assistidos").Checked = gp.PERM_ASSISTIDO;
        }
    }
}
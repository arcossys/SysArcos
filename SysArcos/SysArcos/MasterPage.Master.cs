using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String pagina = System.IO.Path.GetFileName(
                    HttpContext.Current.Request.Url.AbsolutePath);
                validaPermisses(pagina);

                String login = (string)Session["usuariologado"]; //Neste caso deve-se fazer a conversão
                if (login != null)
                {
                    using (ARCOS_Entities entity = new ARCOS_Entities())
                    {
                        string permissao = "";
                        USUARIO u = entity.USUARIO.FirstOrDefault(x => x.LOGIN.Equals(login));
                        if (u.GRUPO_PERMISSAO != null)
                            permissao = u.GRUPO_PERMISSAO.DESCRICAO;
                        lbl_welcomeUser.Text = ("Usuário logado: " + u.NOME + "("+ permissao +")"); // em 'u' vai recuperar o atributo NOME
                    }
                }

                else
                {
                    Response.Redirect("/Default.aspx");
                }

            }
        }

        protected void lnk_logout_Click(object sender, EventArgs e)
        {
            // Remove todas as variáveis da sessão servidor.
            Session.RemoveAll();       //OU   Session["usuariologado"] = null;

            //Redireciona para a página principal
            Response.Redirect("/Default.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void testaPermissao(bool permissao)
        {
            if (!permissao){
                    Response.Redirect("/permissao_negada.aspx");
            }
        }

        private void validaPermisses(String pagina)
        {
            using (ARCOS_Entities entity = new ARCOS_Entities())
            {
                string login = (string)Session["usuariologado"];
                USUARIO u =
                    entity.USUARIO.FirstOrDefault(linha => linha.LOGIN.Equals(login));

                if (pagina.Equals("frmassistencia.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_ASSISTENCIA);
                if (pagina.Equals("frmbuscaassistencia.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_ASSISTENCIA);

                if (pagina.Equals("frmassistido.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_ASSISTIDO);
                if (pagina.Equals("frmbuscaassistido.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_ASSISTIDO);

                if (pagina.Equals("frmcategoria_produto.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_TIPOPRODUTO);

                if (pagina.Equals("frmbuscadoador.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_DOADOR);
                if (pagina.Equals("frmdoador.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_DOADOR);

                if (pagina.Equals("frmbuscaentidade.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_ENTIDADE);
                if (pagina.Equals("frmentidade.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_ENTIDADE);

                if (pagina.Equals("frmevento.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_EVENTO);

                if (pagina.Equals("frmbuscafornecedor.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_FORNECEDOR);
                if (pagina.Equals("frmfornecedor.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_FORNECEDOR);

                if (pagina.Equals("frmbuscaproduto.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_PRODUTO);
                if (pagina.Equals("frmproduto.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_PRODUTO);

                if (pagina.Equals("frmbuscatipoevento.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_EVENTO);
                if (pagina.Equals("frmtipoevento.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_EVENTO);

                if (pagina.Equals("frmbuscatiporecurso.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_TIPORECURSO);
                if (pagina.Equals("frmtiporecurso.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_TIPORECURSO);

                if (pagina.Equals("frmbuscagrupopermissao")) testaPermissao(u.GRUPO_PERMISSAO.PERM_GRUPOPERMISSAO);
                if (pagina.Equals("frmgrupopermissao.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_GRUPOPERMISSAO);

                if (pagina.Equals("frmbuscausuario.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_USUARIOS);
                if (pagina.Equals("frmusuario.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_USUARIOS);

                if (pagina.Equals("frmbuscavoluntariado.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_VOLUNTARIADO);
                if (pagina.Equals("frmvoluntariado.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_VOLUNTARIADO);

                if (pagina.Equals("frmbuscavoluntario.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_VOLUNTARIOS);
                if (pagina.Equals("frmvoluntario.aspx")) testaPermissao(u.GRUPO_PERMISSAO.PERM_VOLUNTARIOS);
            }
        }
    }
}
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
                //Valida Permissões
                String pagina = HttpContext.Current.Request.Url.AbsolutePath;
                if (!pagina.Equals("AlterarSenhaProxLogin.aspx"))
                    verificarSenhaPrimeiroLogin();
                validaPermissao(pagina);

                String login = (string)Session["usuariologado"]; //Neste caso deve-se fazer a conversão
                if (login != null)
                {
                    using (ARCOS_Entities entity = new ARCOS_Entities())
                    {
                        string permissao = "";
                        USUARIO u = entity.USUARIO.FirstOrDefault(x => x.LOGIN.Equals(login));
                        if (u.GRUPO_PERMISSAO != null)
                            permissao = u.GRUPO_PERMISSAO.DESCRICAO;
                        lbl_welcomeUser.Text = (u.NOME + "("+ permissao +")"); // em 'u' vai recuperar o atributo NOME

                        carregaItensMenu(entity);
                    }
                }

                else
                {
                    Response.Redirect("/Default.aspx");
                }

            }
        }

        private void carregaItensMenu(ARCOS_Entities conn)
        {
            RepeaterMenu.DataSource = conn.SISTEMA_GRUPO_ENTIDADE.OrderBy(x => x.ORDEM).ToList();
            RepeaterMenu.DataBind();
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

        private void validaPermissao(String pagina)
        {
            using (ARCOS_Entities entity = new ARCOS_Entities())
            {
                string login = (string)Session["usuariologado"];
                USUARIO u =
                    entity.USUARIO.FirstOrDefault(linha => linha.LOGIN.Equals(login));
                if (!u.ADM)
                {
                    SISTEMA_ENTIDADE item = entity.SISTEMA_ENTIDADE.FirstOrDefault(x => x.URL.Equals(pagina));
                    if (item != null)
                    {
                        SISTEMA_ITEM_ENTIDADE perm = u.GRUPO_PERMISSAO.SISTEMA_ITEM_ENTIDADE.FirstOrDefault(x => x.ID_SISTEMA_ENTIDADE.ToString().Equals(item.ID.ToString()));
                        if (perm == null)
                        {
                            Response.Redirect("/permissao_negada.aspx");
                        }
                    }
                }
            }
        }

        private void verificarSenhaPrimeiroLogin()
        {
            if (Session["altera_primeiro_login"] != null)
            {
                bool altera_primeiro_login = (bool)Session["altera_primeiro_login"];
                if (altera_primeiro_login)
                {
                    Response.Redirect("/AlterarSenhaProxLogin.aspx");
                }
            }
            
        }
    }
}
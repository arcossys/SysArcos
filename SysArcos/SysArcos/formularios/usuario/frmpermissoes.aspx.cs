using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos.formularios.usuario
{
    public partial class frmpermissoes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String login = Request.QueryString["login"];
                lblLogin.Text = login;
                using (ARCOS_Entities entity = new ARCOS_Entities())
                {
                    USUARIO u = entity.USUARIO.FirstOrDefault(x => x.LOGIN.Equals(login));
                    lblUsuario.Text = u.NOME;
                }
                //carregarTelas();
                //carregarGrid();
            }
        }

        //private void carregarTelas()
        //{
        //    using (ARCOS_Entities entity = new ARCOS_Entities())
        //    {
        //        TELA tela_blank = new TELA();
        //        tela_blank.ID = 0;
        //        tela_blank.DESCRICAO = "";
        //        //List<TELA> lista = entity.TELA.OrderBy(x => x.DESCRICAO).ToList();
        //        lista.Insert(0, tela_blank);
        //        ddlTelas.DataSource = lista;
        //        ddlTelas.DataTextField = "DESCRICAO";
        //        ddlTelas.DataValueField = "ID";
        //        ddlTelas.DataBind();

        //    }
        //}

        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName.ToString().Equals("btnPermissoes"))
        //    {
        //        Response.Redirect("frmpermissoes.aspx");
        //    }
        //}

        //protected void btnAdicionar_Click(object sender, EventArgs e)
        //{
        //    using (ARCOS_Entities entity = new ARCOS_Entities())
        //    {
        //        USUARIO usuario = entity.USUARIO.FirstOrDefault(x => x.LOGIN.Equals(lblLogin.Text.ToString()));
        //        TELA tela = entity.TELA.FirstOrDefault(x => x.ID.ToString().Equals(ddlTelas.SelectedValue.ToString()));
        //        tela.USUARIO.Add(usuario);
        //        entity.SaveChanges();

        //        carregarGrid();
        //    }
        //}

        //private void carregarGrid()
        //{
        //    using (ARCOS_Entities entity = new ARCOS_Entities())
        //    {
        //        USUARIO usuario = entity.USUARIO.FirstOrDefault(x => x.LOGIN.ToString().Equals(lblLogin.Text.ToString()));
        //        grid.DataSource = usuario.TELA;
        //        grid.DataBind();
        //    }
        //}

        //protected void btnVoltar_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("frmbuscausuario.aspx");
        //}

        //protected void btnRemover_Click(object sender, EventArgs e)
        //{
        //    if (grid.SelectedValue != null)
        //    {
        //        string ID = grid.SelectedValue.ToString();
        //        using (ARCOS_Entities entities = new ARCOS_Entities())
        //        {
        //            TELA tela = entities.TELA.FirstOrDefault(x => x.ID.ToString().Equals(ID));
        //            USUARIO usuario = entities.USUARIO.FirstOrDefault(x => x.LOGIN.Equals(lblLogin.Text.ToString()));
        //            usuario.TELA.Remove(tela);

        //            entities.SaveChanges();

        //            //Limpar Grid 
        //            grid.DataSource = null;
        //            grid.DataBind();
        //            grid.SelectedIndex = -1;
        //            Response.Write("<script>alert('Removido com sucesso!');</script>");
        //        }

        //        carregarGrid();
        //    }
        //}
    }
}

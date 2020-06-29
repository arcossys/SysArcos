using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysArcos;
namespace ProjetoArcos
{
    public partial class frmbuscavoluntario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Voltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmvoluntario.aspx");
        }

        protected void btn_Remover_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
            {
                //string login = grid.SelectedValue.ToString();  // Linha que deu origem ao comando abaixo.
                string ID = grid.SelectedValue.ToString();
                try
                {
                    using (ARCOS_Entities entities = new ARCOS_Entities())
                    {
                        // USUARIO usuario = entities.USUARIO.FirstOrDefault(x => x.LOGIN.Equals(login)); // Linha que deu origem ao comando abaixo.
                        VOLUNTARIO voluntario = entities.VOLUNTARIO.FirstOrDefault(x => x.ID.ToString().Equals(ID));
                        entities.VOLUNTARIO.Remove(voluntario);
                        entities.SaveChanges();

                        //Limpar Grid 
                        grid.DataSource = null;
                        grid.DataBind();
                        grid.SelectedIndex = -1;
                        Response.Write("<script>alert('Voluntário removido com sucesso!');</script>");
                    }
                }
                catch
                {
                    Response.Write("<script>alert('Falha ao remover registro!');</script>");
                }
            }
        }

        protected void btn_Busca_Click(object sender, EventArgs e)
        {
            using (ARCOS_Entities entities = new ARCOS_Entities())
            {
                List<VOLUNTARIO> lista = null;
                if (rd_list.Text == "Nome")
                {
                    //lista = entities.USUARIO.Where(x => x.LOGIN.StartsWith(txt_Busca.Text)).ToList();
                    //lista = entities.USUARIO.Where(x => x.CPF.StartsWith(txt_Busca.Text)).ToList();  // Linha da qual foi adaptada a busca abaixo.
                    lista = entities.VOLUNTARIO.Where(x => x.NOME.Contains(txt_Busca.Text)).ToList();
                }
                else if (rd_list.Text == "CPF")
                {
                    //lista = entities.USUARIO.Where(x => x.NOME.StartsWith(txt_Busca.Text)).ToList();  // Linha da qual foi adaptada a busca abaixo.
                    lista = entities.VOLUNTARIO.Where(x => x.CPF.Contains(txt_Busca.Text)).ToList();
                }
                else
                {
                    // lista = entities.VOLUNTARIO.Where(x => x.NOME.Contains(txt_Busca.Text)).ToList();
                    lista = entities.VOLUNTARIO.ToList();
                }
                grid.DataSource = lista.OrderBy(x => x.NOME);
                grid.DataBind();
            }
        }

        protected void btn_Alterar_Click(object sender, EventArgs e)
        {
            if (grid.SelectedValue != null)
                // Redireciona para a página de cadastro de voluntário com o id como parâmetro.
                Response.Redirect("frmvoluntario.aspx?id=" + grid.SelectedValue.ToString());
                
        }

        protected void rd_Nome_Click(object sender, EventArgs e)
        {
            //rd_CPF.Checked = false;
            //rd_Nome.Checked = true;
            
        }

        protected void rd_CPF_Click  (object sender, EventArgs e)
        {
            
        }

        protected void grid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
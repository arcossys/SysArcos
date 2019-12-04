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
                    ARCOS_Entities entities = GerConnetion.get(HttpContext.Current);
                    TIPO_RECURSO u = entities.TIPO_RECURSO.FirstOrDefault(x => x.ID.ToString().Equals(ID));
                    if (u != null)
                    {

                        txtDescricao.Text = u.DESCRICAO;

                    }

                }
            }

        }


        protected void btn_cadastrarrecurso_Click(object sender, EventArgs e)
        {
            //Cria novo objeto entidade

            TIPO_RECURSO TIPO_RECURSO = new TIPO_RECURSO();

            // Criar conexão com o banco

            ARCOS_Entities entity = new ARCOS_Entities();

            if (txtDescricao.Text == "")

            {

                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");

            }

            else

            {

                //entidade.ID = Convert.ToInt32(txtID.Text);

                TIPO_RECURSO.DESCRICAO = txtDescricao.Text;
                TIPO_RECURSO.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;

                // Insere o objeto

                entity.TIPO_RECURSO.Add(TIPO_RECURSO);

                //Salva no disco rígido

                entity.SaveChanges();

                // Commit

                Response.Write("<script>alert('Tipo de evento cadastrado com sucesso!');</script>");

                txtDescricao.Text = string.Empty;



            }
        }
    }
}


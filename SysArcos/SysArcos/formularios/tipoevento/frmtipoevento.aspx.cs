using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoArcos
{
    public partial class frmTipoEvento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String evento = Request.QueryString["ID"];
                if ((evento != null) && (!evento.Equals("")))
                {
                    using (ARCOS_Entities entities = new ARCOS_Entities())
                    {
                        TIPO_EVENTO u = entities.TIPO_EVENTO.FirstOrDefault(x => x.ID.ToString().Equals(evento));
                        if (u != null)
                        {
                            lblID.Text = u.ID.ToString();
                            txtDescricaoEvento.Text = u.DESCRICAO;
                            txtTipoEvento.Text = u.NOME;
                            lblAcao.Text = "ALTERANDO";
                        }
                    }

                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnCadastrarTipoEvento_Click(object sender, EventArgs e)
        {
            
            if (txtTipoEvento.Text == "" || txtDescricaoEvento.Text == "")
            {
                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
            }
            else
            {
                using (ARCOS_Entities entity = new ARCOS_Entities())
                {

                    TIPO_EVENTO tipo_evento = null;

                    if (lblAcao.Text.Equals("NOVO"))
                    {
                        tipo_evento = new TIPO_EVENTO();
                        //entidade.ID = Convert.ToInt32(txtID.Text);
                        tipo_evento.NOME = txtTipoEvento.Text;
                        tipo_evento.DESCRICAO = txtDescricaoEvento.Text;

                        // Insere o objeto
                        entity.TIPO_EVENTO.Add(tipo_evento);

                    }
                    else
                    {
                        tipo_evento = entity.TIPO_EVENTO.FirstOrDefault(x => x.ID.ToString().Equals(lblID.Text));

                        tipo_evento.NOME = txtTipoEvento.Text;
                        tipo_evento.DESCRICAO = txtDescricaoEvento.Text;

                        entity.Entry(tipo_evento);
                    }


                    //Salva no disco rígido
                    entity.SaveChanges();

                    limpar();

                    // Commit
                    Response.Write("<script>alert('Tipo de evento cadastrado com sucesso!');</script>");

                    txtTipoEvento.Text = string.Empty;
                    txtDescricaoEvento.Text = string.Empty;
                    lblAcao.Text = "NOVO";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            limpar();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscatipoevento.aspx");
        }

        private void limpar()
        {
            txtTipoEvento.Text = string.Empty;
            txtDescricaoEvento.Text = string.Empty;
            lblAcao.Text = "NOVO";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos.formularios.parentesco_assistido
{
    public partial class frmparentescoassistido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String parentesco = Request.QueryString["ID"];
                if ((parentesco != null) && (!parentesco.Equals("")))
                {
                    using (ARCOS_Entities entities = new ARCOS_Entities())
                    {
                        GRAU_DEPENDENCIA g = entities.GRAU_DEPENDENCIA.FirstOrDefault(x => x.ID.ToString().Equals(parentesco));
                        if (g != null)
                        {
                            lblID.Text = g.ID.ToString();
                            txtParentesco.Text = g.DESCRICAO;
                            lblAcao.Text = "ALTERANDO";
                        }
                    }

                }
            }
        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {
            limpar();
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            if (txtParentesco.Text == "" )
            {
                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
            }
            else
            {
                try
                {
                    using (ARCOS_Entities entity = new ARCOS_Entities())
                    {

                        GRAU_DEPENDENCIA gd = null;

                        if (lblAcao.Text.Equals("NOVO"))
                        {
                            gd = new GRAU_DEPENDENCIA();
                            //entidade.ID = Convert.ToInt32(txtID.Text);
                            gd.DESCRICAO = txtParentesco.Text;

                            // Insere o objeto
                            entity.GRAU_DEPENDENCIA.Add(gd);

                        }
                        else
                        {
                            gd = entity.GRAU_DEPENDENCIA.FirstOrDefault(x => x.ID.ToString().Equals(lblID.Text));
                            gd.DESCRICAO = txtParentesco.Text;
                            entity.Entry(gd);
                        }


                        //Salva no disco rígido
                        entity.SaveChanges();

                        limpar();

                        // Commit
                        Response.Write("<script>alert('Parentesco assistido cadastrado com sucesso!');</script>");

                        txtParentesco.Text = string.Empty;
                        lblAcao.Text = "NOVO";
                    }
                }
                catch
                {
                    Response.Write("<script>alert('Registro não pode ser salvo!');</script>");
                }
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscaparentescoassistido.aspx");
        }

        private void limpar()
        {
            txtParentesco.Text = string.Empty;
        }
    }
}
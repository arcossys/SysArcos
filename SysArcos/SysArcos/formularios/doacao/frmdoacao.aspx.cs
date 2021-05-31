using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SysArcos.formularios.doacao
{
    public partial class frmdoacao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // VAMOS CRIAR DPS - carregaAdministradores();
                String ID = Request.QueryString["ID"];
                if ((ID != null) && (!ID.Equals("")))
                {
                    int i = Convert.ToInt32(ID);
                    using (ARCOS_Entities entities = new ARCOS_Entities())
                    {
                        DOACAO u = entities.DOACAO.FirstOrDefault(x => x.ID.Equals(i));
                        if (u != null)
                        {
                            string ID_CONVERT = ID.ToString();

                            //lblID.Text = i.ToString();
                            DropDownList1.Text = ID_CONVERT;
                            //txtNomeEntidade.ReadOnly = true;
                            /*txtCNPJ.Text = u.CNPJ;
                            txtTelefone.Text = u.TELEFONE;
                            txtLogradouro.Text = u.LOGRADOURO;
                            txtNumero.Text = u.NUMERO;
                            txtBairro.Text = u.BAIRRO;
                            txtCEP.Text = u.CEP;
                            txtCidade.Text = u.CIDADE;
                            drpEstado.Text = u.ESTADO;
                            txtPresidente.Text = u.PRESIDENTE;
                            txtAdmnistrador.Text = u.LOGIN_USUARIO_ADMINISTRADOR;
                            lblAcao.Text = "ALTERANDO";
                            cbAtivo.Checked = u.ATIVA;*/
                            
                        }
                    }
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscadoacao.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }

        
    }
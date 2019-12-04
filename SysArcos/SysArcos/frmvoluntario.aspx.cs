using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoArcos
{
    public partial class frmvoluntario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Cadastrar_Click(object sender, EventArgs e)
        {
            VOLUNTARIO voluntario = new VOLUNTARIO();

            if (txt_vnome.Text == "" || txt_vcpf.Text == "" || txt_vendereco.Text == "" || txt_vnumero.Text == "" || txt_vBairro.Text == ""
                || txt_vcep.Text == "" || txt_vCidade.Text == "" || drp_vEstado.Text == "" || txt_vDispo.Text == "" || txt_vSerDisp.Text == "")
            {
                Response.Write("<script>alert('Há campos obrigatorios não preenchidos!');</script>");
            }
            else
            {
                voluntario.NOME = lbl_vnome.Text;
                voluntario.CPF = lbl_vcpf.Text;
                voluntario.LOGRADOURO = lbl_vEndereco.Text;
                voluntario.NUMERO = lbl_vnumero.Text;
                voluntario.BAIRRO = lbl_vBairro.Text;
                voluntario.CEP = lbl_vcep.Text;
                voluntario.CIDADE = lbl_vCidade.Text;
                voluntario.ESTADO = drp_vEstado.Text;
                voluntario.DISPONIBILIDADE = lbl_vDispo.Text;
                voluntario.SERVICOS_DISPONIVEIS = lbl_vSerDisp.Text;
                voluntario.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;

                Response.Write("<script>alert('Voluntario Cadastrado com Sucesso!');</script>");

                txt_vnome.Text = string.Empty;
                txt_vcpf.Text = string.Empty;
                txt_vendereco.Text = string.Empty;
                txt_vnumero.Text = string.Empty;
                txt_vBairro.Text = string.Empty;
                txt_vcep.Text = string.Empty;
                txt_vCidade.Text = string.Empty;
                drp_vEstado.SelectedValue = null;
                txt_vDispo.Text = string.Empty;
                txt_vSerDisp.Text = string.Empty;
            }

            ARCOS_Entities entity = new ARCOS_Entities();
            entity.VOLUNTARIO.Add(voluntario);
        }
    }
}
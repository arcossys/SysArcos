﻿using System;
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
            if (!IsPostBack)
            {
                String id = Request.QueryString["id"];
                if ((id != null) && (!id.Equals("")))

                    {
                    lblID.Text = id;
                    ARCOS_Entities entities = GerConnetion.get(HttpContext.Current);
                    VOLUNTARIO u = entities.VOLUNTARIO.FirstOrDefault(x => x.ID.ToString().Equals(id));
                    if (u != null)
                    {
                        txt_vnome.Text = u.NOME;
                        txt_vcpf.Text = u.CPF; 
                        txt_vendereco.Text = u.LOGRADOURO; 
                        txt_vnumero.Text = u.NUMERO; 
                        txt_vBairro.Text = u.BAIRRO; 
                        txt_vcep.Text = u.CEP; 
                        txt_vCidade.Text = u.CIDADE;
                        txt_vDispo.Text = u.DISPONIBILIDADE;
                        txt_vSerDisp.Text = u.SERVICOS_DISPONIVEIS;
                        drp_vEstado.SelectedValue = u.ESTADO;
                        ckb_vativo.Checked = u.ATIVO;   
                        lbl_Status.Text = "Alterando";
                    }

                }
            }
        }

        protected void btn_Cadastrar_Click(object sender, EventArgs e)
        {
                ARCOS_Entities entities = GerConnetion.get(HttpContext.Current);
            VOLUNTARIO voluntario = new VOLUNTARIO();
                        
                if (txt_vnome.Text == "" || txt_vcpf.Text == "" || txt_vendereco.Text == "" || txt_vnumero.Text == "" || txt_vBairro.Text == ""
                    || txt_vcep.Text == "" || txt_vCidade.Text == "" || drp_vEstado.Text == "" || txt_vDispo.Text == "" || txt_vSerDisp.Text == "")
                {
                    Response.Write("<script>alert('Há campos obrigatórios não preenchidos!');</script>");
                }
                else
                {

                
                    if (lbl_Status.Text.Equals("Cadastrando"))
                    {
                                            
                        voluntario.NOME = txt_vnome.Text;
                        voluntario.CPF = txt_vcpf.Text;
                        voluntario.LOGRADOURO = txt_vendereco.Text;
                        voluntario.NUMERO = txt_vnumero.Text;
                        voluntario.BAIRRO = txt_vBairro.Text;
                        voluntario.CEP = txt_vcep.Text;
                        voluntario.CIDADE = txt_vCidade.Text;
                        voluntario.ESTADO = drp_vEstado.Text;
                        voluntario.DISPONIBILIDADE = txt_vDispo.Text;
                        voluntario.SERVICOS_DISPONIVEIS = txt_vSerDisp.Text;
                        voluntario.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;

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
                        ckb_vativo.Checked = false;

                    entities.VOLUNTARIO.Add(voluntario);

                    }
                    else

                    {

                        voluntario = entities.VOLUNTARIO.FirstOrDefault(x => x.ID.ToString().Equals(lblID.Text));


                        voluntario.NOME = txt_vnome.Text;
                        voluntario.CPF = txt_vcpf.Text;
                        voluntario.LOGRADOURO = txt_vendereco.Text;
                        voluntario.NUMERO = txt_vnumero.Text;
                        voluntario.BAIRRO = txt_vBairro.Text;
                        voluntario.CEP = txt_vcep.Text;
                        voluntario.CIDADE = txt_vCidade.Text;
                        voluntario.ESTADO = drp_vEstado.Text;
                        voluntario.DISPONIBILIDADE = txt_vDispo.Text;
                        voluntario.SERVICOS_DISPONIVEIS = txt_vSerDisp.Text;
                        voluntario.DATA_HORA_CRIACAO_REGISTRO = DateTime.Now;
                        entities.Entry(voluntario);

                    }
            }

            entities.SaveChanges();
            Response.Write("<script>alert('Voluntario Cadastrado com Sucesso!');</script>");
        }

        protected void btn_Limpar_Click(object sender, EventArgs e)
        {
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
           ckb_vativo.Checked = false;
        }

        protected void btn_Consultar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmbuscavoluntario.aspx");
        }
    }
}
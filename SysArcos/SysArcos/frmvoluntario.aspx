<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmvoluntario.aspx.cs" Inherits="ProjetoArcos.frmvoluntario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbl_vnome" runat="server" Text="Nome"></asp:Label>
<br />
<asp:TextBox ID="txt_vnome" runat="server"></asp:TextBox>
<br />
<asp:Label ID="lbl_vcpf" runat="server" Text="CFP"></asp:Label>
<br />
<asp:TextBox ID="txt_vcpf" runat="server"></asp:TextBox>
<br />
<asp:Label ID="lbl_vEndereco" runat="server" Text="Endereço"></asp:Label>
<br />
<asp:TextBox ID="txt_vendereco" runat="server"></asp:TextBox>
<br />
<asp:Label ID="lbl_vnumero" runat="server" Text="Número"></asp:Label>
<br />
<asp:TextBox ID="txt_vnumero" runat="server"></asp:TextBox>
<br />
<asp:Label ID="lbl_vBairro" runat="server" Text="Bairro"></asp:Label>
<br />
<asp:TextBox ID="txt_vBairro" runat="server"></asp:TextBox>
<br />
<asp:Label ID="lbl_vcep" runat="server" Text="CEP"></asp:Label>
<br />
<asp:TextBox ID="txt_vcep" runat="server"></asp:TextBox>
<br />
<asp:Label ID="lbl_vCidade" runat="server" Text="Cidade"></asp:Label>
<br />
<asp:TextBox ID="txt_vCidade" runat="server"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Label ID="lbl_vEstado" runat="server" Text="Estado"></asp:Label>
    &nbsp;
<asp:DropDownList ID="drp_vEstado" runat="server">
    <asp:ListItem>AL</asp:ListItem>
    <asp:ListItem>AP</asp:ListItem>
    <asp:ListItem>AM</asp:ListItem>
    <asp:ListItem>BA</asp:ListItem>
    <asp:ListItem>CE</asp:ListItem>
    <asp:ListItem>DF</asp:ListItem>
    <asp:ListItem>ES</asp:ListItem>
    <asp:ListItem>GO</asp:ListItem>
    <asp:ListItem>MA</asp:ListItem>
    <asp:ListItem>MT</asp:ListItem>
    <asp:ListItem>MS</asp:ListItem>
    <asp:ListItem>MG</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>PB</asp:ListItem>
    <asp:ListItem>PR</asp:ListItem>
    <asp:ListItem>PE</asp:ListItem>
    <asp:ListItem>PI</asp:ListItem>
    <asp:ListItem>RJ</asp:ListItem>
    <asp:ListItem>RN</asp:ListItem>
    <asp:ListItem>RS</asp:ListItem>
    <asp:ListItem>RO</asp:ListItem>
    <asp:ListItem>RR</asp:ListItem>
    <asp:ListItem>SC</asp:ListItem>
    <asp:ListItem>SP</asp:ListItem>
    <asp:ListItem>SE</asp:ListItem>
    <asp:ListItem>TO</asp:ListItem>
</asp:DropDownList>
<br />
<asp:Label ID="lbl_vDispo" runat="server" Text="Disponibilidade"></asp:Label>
<br />
<asp:TextBox ID="txt_vDispo" runat="server"></asp:TextBox>
<br />
<asp:Label ID="lbl_vSerDisp" runat="server" Text="Serviços Disponiveis"></asp:Label>
<br />
<asp:TextBox ID="txt_vSerDisp" runat="server"></asp:TextBox>
    <br />
    <asp:CheckBox ID="ckb_vativo" runat="server" Text="Ativo" />
    <br />
    <br />
&nbsp;<asp:Button ID="btn_Cadastrar" runat="server" Text="Cadastrar" OnClick="btn_Cadastrar_Click" />
<br />
</asp:Content>

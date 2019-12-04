<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmtiporecurso.aspx.cs" Inherits="ProjetoArcos.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="DESCRIÇÃO"></asp:Label>
    <br />
    <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btn_cadastrarrecurso" runat="server" OnClick="btn_cadastrarrecurso_Click" Text="Cadastrar" />
</asp:Content>

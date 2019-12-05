<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmtipoevento.aspx.cs" Inherits="ProjetoArcos.frmTipoEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
    <br />
    <asp:Label ID="lblID" runat="server"></asp:Label>
    <br />
    <asp:Label ID="lblTipoEvento" runat="server" Text="Tipo de Evento"></asp:Label>
    <br />
    <asp:TextBox ID="txtTipoEvento" runat="server" MaxLength="50" OnTextChanged="TextBox1_TextChanged" Width="300px" CssClass="form-control"></asp:TextBox>
    <br />
    <asp:Label ID="lblDescricao" runat="server" Text="Descrição"></asp:Label>
    <br />
    <asp:TextBox ID="txtDescricaoEvento" runat="server" MaxLength="50" Width="300px" CssClass="form-control"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Novo" />
&nbsp;<asp:Button ID="btnCadastrarTipoEvento" class="btn btn-success" runat="server" OnClick="btnCadastrarTipoEvento_Click" Text="Cadastrar" Width="100px" CssClass="btn btn-primary" />
&nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Buscar" />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmTipoEvento.aspx.cs" Inherits="ProjetoArcos.frmTipoEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblTipoEvento" runat="server" Text="Tipo de Evento"></asp:Label>
    <br />
    <asp:TextBox ID="txtTipoEvento" runat="server" Height="30px" MaxLength="50" OnTextChanged="TextBox1_TextChanged" Width="300px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblDescricao" runat="server" Text="Descrição"></asp:Label>
    <br />
    <asp:TextBox ID="txtDescricaoEvento" runat="server" Height="30px" MaxLength="50" Width="300px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnCadastrarTipoEvento" class="btn btn-success" runat="server" Height="40px" OnClick="btnCadastrarTipoEvento_Click" Text="Cadastrar" Width="100px" />
</asp:Content>

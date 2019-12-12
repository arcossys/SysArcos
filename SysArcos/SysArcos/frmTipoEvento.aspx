<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmtipoevento.aspx.cs" Inherits="ProjetoArcos.frmTipoEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Tipo de Evento
    </div>

    <div class="acao">
        <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
    </div>

    <div>
        <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>
    </div>
    
    <div>
        <asp:Label ID="lblTipoEvento" runat="server" Text="Tipo de Evento"></asp:Label>
        <asp:TextBox ID="txtTipoEvento" runat="server" MaxLength="50" OnTextChanged="TextBox1_TextChanged" Width="300px" CssClass="form-control"></asp:TextBox>
    </div> 

    <div>
        <asp:Label ID="lblDescricao" runat="server" Text="Descrição"></asp:Label>
        <asp:TextBox ID="txtDescricaoEvento" runat="server" MaxLength="50" Width="300px" CssClass="form-control"></asp:TextBox>
    </div>
    <br />
    <div>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Novo" />
    &nbsp;<asp:Button ID="btnCadastrarTipoEvento" class="btn btn-success" runat="server" OnClick="btnCadastrarTipoEvento_Click" Text="Salvar" CssClass="btn btn-primary" />
    &nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Buscar" />
    </div>
</asp:Content>

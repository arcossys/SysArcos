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
    
<div class="row">
    <div class="col-12 col-lg-4">
        <asp:Label ID="lblTipoEvento" runat="server" Text="Tipo de Evento"></asp:Label>
        <asp:TextBox ID="txtTipoEvento" runat="server"  OnTextChanged="TextBox1_TextChanged" Width="100%" MaxLength="50" Height="40px" CssClass="form-control"></asp:TextBox>
    </div> 
</div>

<div class="row">
    <div class="col-12 col-lg-4">
        <asp:Label ID="lblDescricao" runat="server" Text="Descrição"></asp:Label>
        <asp:TextBox ID="txtDescricaoEvento" runat="server" Width="100%" MaxLength="50" Height="40px" CssClass="form-control"></asp:TextBox>
    </div>
</div>
    <br />
    <div>
    
<div class="row">
    <div class="col-12 col-lg-4 row_buttons"> 
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Novo" Width="100%" Font-Size="X-Large"/>
    </div>

    <div class="col-12 col-lg-4 row_buttons"> 
        <asp:Button ID="btnCadastrarTipoEvento" class="btn btn-success" runat="server" OnClick="btnCadastrarTipoEvento_Click" Text="Salvar" CssClass="btn btn-primary" Width="100%" Font-Size="X-Large"/>
    </div>
    
    <div class="col-12 col-lg-4 row_buttons"> 
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Buscar" Width="100%" Font-Size="X-Large" />
    </div>
</div>
</asp:Content>

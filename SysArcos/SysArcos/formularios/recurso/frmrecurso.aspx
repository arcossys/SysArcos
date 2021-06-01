<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmrecurso.aspx.cs" Inherits="SysArcos.formularios.recurso.recurso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="entidade">
        Recurso
    </div>

    <div class="acao">
        <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
    </div>

    <div>
        <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>
    </div>

    <div class="row">
        <div class="col-12 col-lg-10 row_fields">
            <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
        </div>
        <div class="col-lg-4 col-md-12">
            <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-12 col-lg-10 row_fields">
            <asp:Label ID="lblDescricao" runat="server" Text="Descrição"></asp:Label>
        </div>
        <div class="col-lg-4 col-md-12">
            <asp:TextBox ID="txtDescricao" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-12 col-lg-10 row_fields">
            <asp:Label ID="lblTipoRecurso" runat="server" Text="Tipo Recurso"></asp:Label>
        </div>
        <div class="col-lg-4 col-md-12">
            <asp:DropDownList ID="ddlTipoEvento" runat="server" CssClass="form-control">
            </asp:DropDownList>
        </div>
    </div>

    <div class="row">
        <div class="col-12 col-lg-10 row_fields">
            <asp:Label ID="lblEntidade" runat="server" Text="Entidade"></asp:Label>
        </div>
        <div class="col-lg-4 col-md-12">
            <asp:DropDownList ID="ddlEntidade" runat="server" CssClass="form-control">
            </asp:DropDownList>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <asp:CheckBox ID="cbAtivo" runat="server" Text="Ativo" />
        </div>
    </div>

    <div class="row">
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btnNovo" runat="server" CssClass="btn btn-primary" Text="Novo" Width="100%"/>
        </div>
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btnSalvar" runat="server" CssClass="btn btn-primary" Text="Salvar"  Width="100%"/>
        </div>
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-primary" OnClick="btnBuscar_Click" Text="Buscar"  Width="100%"/>
        </div>
    </div>
</asp:Content>

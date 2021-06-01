<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmtiporecurso.aspx.cs" Inherits="ProjetoArcos.frmtiporecurso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="entidade">
        Tipo de Recurso
    </div>

    <div class="acao">
        <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
    </div>

    <div>
        <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>
    </div>

    <div class="row">
        <div class="col-12 col-lg-10 row_fields">
            <asp:Label ID="Label1" runat="server" Text="Descrição"></asp:Label>
        </div>
        <div class="col-lg-4 col-md-12">
            <asp:TextBox ID="txtDescricao" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btnNovo" Width="100%" runat="server" CssClass="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btn_cadastrarrecurso" Width="100%" runat="server" OnClick="btn_cadastrarrecurso_Click" Text="Salvar" CssClass="btn btn-primary" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btnBuscar" Width="100%" runat="server" CssClass="btn btn-primary" OnClick="btnBuscar_Click" Text="Buscar" />
        </div>
    </div>
</asp:Content>

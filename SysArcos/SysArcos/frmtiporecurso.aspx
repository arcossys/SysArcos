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
    <br />
    <asp:Label ID="Label1" runat="server" Text="DESCRIÇÃO"></asp:Label>
    <br />
    <asp:TextBox ID="txtDescricao" runat="server" Width="300px" CssClass="form-control"></asp:TextBox>
    <br />
    <asp:Button ID="btnNovo" runat="server" CssClass="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" />
&nbsp;<asp:Button ID="btn_cadastrarrecurso" runat="server" OnClick="btn_cadastrarrecurso_Click" Text="Salvar" CssClass="btn btn-primary" />
&nbsp;<asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-primary" OnClick="btnBuscar_Click" Text="Buscar" />
</asp:Content>

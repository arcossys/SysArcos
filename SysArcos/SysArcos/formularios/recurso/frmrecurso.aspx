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

    <div>

        <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
        <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>

    </div>

    <div>

        <asp:Label ID="lblDescricao" runat="server" Text="Descrição"></asp:Label>
        <asp:TextBox ID="txtDescricao" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>

    </div>

    <div>

        <asp:Label ID="lblTipoRecurso" runat="server" Text="Tipo Recurso"></asp:Label>
        <asp:DropDownList ID="ddlTipoEvento" runat="server" CssClass="form-control" Width="300px">
        </asp:DropDownList>

    </div>

    <div>

        <asp:Label ID="lblEntidade" runat="server" Text="Entidade"></asp:Label>
        <asp:DropDownList ID="ddlEntidade" runat="server" CssClass="form-control" Width="300px">
        </asp:DropDownList>

    </div>

    <div>

        <asp:CheckBox ID="cbAtivo" runat="server" Text="Ativo" />

    </div>

    <div>

        <asp:Button ID="btnNovo" runat="server" CssClass="btn btn-primary" Text="Novo" />
&nbsp;<asp:Button ID="btnSalvar" runat="server" CssClass="btn btn-primary" Text="Salvar" />
&nbsp;<asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-primary" OnClick="btnBuscar_Click" Text="Buscar" />

    </div>
</asp:Content>

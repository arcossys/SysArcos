<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmevento.aspx.cs" Inherits="ProjetoArcos.frmevento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Eventos
    </div>

    <div class="acao">
        <asp:Label ID="lblAcao" runat="server" Text="Novo"></asp:Label>
    </div>
    <div>

        <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>

    </div>
    <div>

        <asp:Label ID="Label2" runat="server" Text="Descricao"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>

    </div>
    <div>

        <asp:Label ID="Label3" runat="server" Text="Início"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Width="300px" Placeholder="DD/MM/AAAA HH:MM"></asp:TextBox>

    </div>
    <div>

        <asp:Label ID="Label4" runat="server" Text="Fim"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Width="300px"  Placeholder="DD/MM/AAAA HH:MM"></asp:TextBox>

    </div>
    <div>

        <asp:Label ID="Label6" runat="server" Text="Tipo Evento"></asp:Label>
        <asp:DropDownList ID="ddlTipoEvento" runat="server" CssClass="form-control" Width="300px">
        </asp:DropDownList>

    </div>
    <div>

        <asp:Label ID="Label7" runat="server" Text="Entidade"></asp:Label>
        <asp:DropDownList ID="ddlEntidade" runat="server" CssClass="form-control" Width="300px">
        </asp:DropDownList>

    </div>
    <br />
    <div>

        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Novo" />
&nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Salvar" />
&nbsp;<asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-primary" Text="Buscar" />

    </div>
</asp:Content>

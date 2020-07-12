<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmdoacao.aspx.cs" Inherits="SysArcos.formularios.doacao.frmdoacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Doação
    </div>
    <div>

        <asp:Label ID="Label1" runat="server" Text="Entidade"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="300px">
        </asp:DropDownList>

    </div>
    <div>

        <asp:Label ID="Label2" runat="server" Text="Doador"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Width="300px">
        </asp:DropDownList>

    </div>
    <div>

        <asp:Label ID="Label3" runat="server" Text="Data"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Date" Width="300px"></asp:TextBox>

    </div>
    <div>

        <asp:Label ID="Label4" runat="server" Text="Descrição"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>

    </div>
    <div>

        <asp:Label ID="Label5" runat="server" Text="Observações"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>

    </div>
    <br />
    <div>

        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Novo" />
&nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Salvar" />
&nbsp;<asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" Text="Buscar" OnClick="Button3_Click" />

    </div>
</asp:Content>

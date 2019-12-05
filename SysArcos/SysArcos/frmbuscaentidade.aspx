<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscaentidade.aspx.cs" Inherits="ProjetoArcos.frmbuscaentidade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Buscar"></asp:Label>
    <asp:TextBox ID="txtbusca" runat="server"></asp:TextBox>
    <asp:Button ID="btnbuscar" runat="server" class="btn btn-success" OnClick="btnbuscar_Click" Text="Buscar" />
    <div>
        <asp:RadioButton ID="rdativo" runat="server" Text="Ativo" />
        <asp:RadioButton ID="rddesativado" runat="server" Text="Inativo" />
        <asp:DropDownList ID="ddlAtivo" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>Ativo</asp:ListItem>
            <asp:ListItem>Inativo</asp:ListItem>
            <asp:ListItem>Todos</asp:ListItem>
        </asp:DropDownList>
    </div>
    <asp:RadioButton ID="rdnome" runat="server" Text="Nome" />
    <asp:RadioButton ID="rdcidade" runat="server" Text="Cidade" />
    <asp:RadioButton ID="rdpresidente" runat="server" Text="Presidente" />
    <asp:RadioButton ID="rdCNPJ" runat="server" Text="CNPJ" />
    <asp:DropDownList ID="ddlCampos" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Nome</asp:ListItem>
        <asp:ListItem>Cidade</asp:ListItem>
        <asp:ListItem>Presidente</asp:ListItem>
        <asp:ListItem>CNPJ</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" DataKeyNames="ID" ShowHeaderWhenEmpty="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="NOME" HeaderText="Nome" />
            <asp:BoundField DataField="CIDADE" HeaderText="Cidade" />
            <asp:BoundField DataField="PRESIDENTE" HeaderText="Presidente" />
            <asp:BoundField DataField="CNPJ" HeaderText="CNPJ" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <asp:Button ID="btncancelar" runat="server" OnClick="btncancelar_Click" Text="Cancelar" />
    <asp:Button ID="btnselecionar" runat="server" OnClick="btnselecionar_Click" Text="Selecionar" />
    <asp:Button ID="btnremover" runat="server" OnClick="btnremover_Click" Text="Remover" />
</asp:Content>

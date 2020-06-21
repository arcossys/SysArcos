<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscaentidade.aspx.cs" Inherits="ProjetoArcos.frmbuscaentidade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Buscar Entidade
    </div>
    <asp:Label ID="Label1" runat="server" Text="Filtro"></asp:Label>
    <asp:TextBox ID="txtbusca" runat="server"></asp:TextBox>
    <asp:Button ID="btnbuscar" runat="server" class="btn btn-success" OnClick="btnbuscar_Click" Text="Buscar" />
    <div>
        <asp:RadioButton ID="rdativo" runat="server" Text="Ativo" GroupName="ativo" Checked="True" />
        <asp:RadioButton ID="rddesativado" runat="server" Text="Inativo" GroupName="ativo" />
    </div>
    <asp:RadioButton ID="rdnome" runat="server" Text="Nome" GroupName="filtro" Checked="True" />
    <asp:RadioButton ID="rdcidade" runat="server" Text="Cidade" GroupName="filtro" />
    <asp:RadioButton ID="rdpresidente" runat="server" Text="Presidente" GroupName="filtro" />
    <asp:RadioButton ID="rdCNPJ" runat="server" Text="CNPJ" GroupName="filtro" />
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
    <asp:Button ID="btncancelar" runat="server" OnClick="btncancelar_Click" Text="Cancelar" CssClass="btn btn-primary" />
    &nbsp;<asp:Button ID="btnselecionar" runat="server" OnClick="btnselecionar_Click" Text="Editar" CssClass="btn btn-primary" />
    &nbsp;<asp:Button ID="btnremover" runat="server" OnClick="btnremover_Click" Text="Remover" CssClass="btn btn-primary" />
</asp:Content>

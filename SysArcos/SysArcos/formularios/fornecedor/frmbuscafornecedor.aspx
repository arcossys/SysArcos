<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscafornecedor.aspx.cs" Inherits="SysArcos.frmbuscafornecedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Buscar Fornecedores
    </div>
    <div>

        <asp:Label ID="Label1" runat="server" Text="Filtro"></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;<asp:Button ID="Button1" runat="server" Text="Buscar" CssClass="btn btn-success" />

    </div>
    <div>

        <asp:RadioButton ID="RadioButton1" runat="server" Text="CNPJ" />
        &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Checked="True" Text="Nome" />

    </div>
    <br />
    <div>

        <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
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

    </div>
    <br />
    <div>

        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-primary" />
&nbsp;<asp:Button ID="btnSelecionar" runat="server" Text="Editar" CssClass="btn btn-primary" />
&nbsp;<asp:Button ID="btnRemover" runat="server" Text="Remover" CssClass="btn btn-primary" 
    OnClientClick="return confirm('Deseja remover?');"/>

    </div>
</asp:Content>

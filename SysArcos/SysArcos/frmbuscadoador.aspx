<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscadoador.aspx.cs" Inherits="ProjetoArcos.frmbusca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Buscar"></asp:Label>
    <asp:TextBox ID="txtbusca" runat="server"></asp:TextBox>
    <asp:Button ID="btnbuscar" runat="server" class="btn btn-success" Text="Buscar" OnClick="btnbuscar_Click" />
    <br />
    <div>
        <asp:RadioButton ID="rdnome" runat="server" Text="Nome" />
        <asp:RadioButton ID="rdcidade" runat="server" Text="Cidade" />
        <asp:RadioButton ID="rdtipodoaçao" runat="server" Text="Tipo de doação" />
    </div>
    <br />
    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1166px" DataKeyNames="ID">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="NOME" HeaderText="Nome" />
            <asp:BoundField DataField="CIDADE" HeaderText="Cidade" />
            <asp:BoundField DataField="TIPO_DOACAO" HeaderText="Tipo de Doação" />
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
    <asp:Button ID="btncancelar" class ="btn btn-primary" runat="server" Text="Cancelar" OnClick="btncancelar_Click" />
    <asp:Button ID="btnselecionar" class ="btn btn-primary" runat="server" Text="Selecionar" OnClick="btnselecionar_Click" />
    <asp:Button ID="btnremover" class ="btn btn-primary" runat="server" Text="Remover" OnClick="btnremover_Click" />
</asp:Content>

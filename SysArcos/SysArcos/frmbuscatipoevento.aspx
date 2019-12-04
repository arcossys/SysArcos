<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscatipoevento.aspx.cs" Inherits="ProjetoArcos.frmbuscatipoevento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<asp:Label ID="lblBuscar" runat="server" Text="Buscar"></asp:Label>
&nbsp;<asp:TextBox ID="txtBusca" runat="server" Height="30px" MaxLength="50" Width="300px"></asp:TextBox>
&nbsp;<asp:Button ID="btnBuscar" class="btn btn-success" runat="server" Text="Buscar" OnClick="btnBuscar_Click" Height="40px" Width="100px" />
	<br />
	<asp:Panel ID="Panel1" runat="server">
        &nbsp;</asp:Panel>
    <asp:RadioButtonList ID="rdbLista" runat="server" RepeatDirection="Horizontal" Width="169px">
        <asp:ListItem>Nome</asp:ListItem>
        <asp:ListItem>Descrição</asp:ListItem>
    </asp:RadioButtonList>
	<br />
	<asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="953px" OnSelectedIndexChanged="grid_SelectedIndexChanged" DataKeyNames="ID">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="NOME" HeaderText="NOME" />
            <asp:BoundField DataField="DESCRICAO" HeaderText="DESCRIÇÃO" />
            <asp:CommandField HeaderText="SELECIONAR" ShowSelectButton="True" />
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
	<asp:Button ID="btnCancelar" class="btn btn-primary" runat="server" Text="Cancelar" Height="40px" Width="100px" />
	<asp:Button ID="btnAlterar" class="btn btn-primary" runat="server" Text="Aterar" Height="40px" Width="100px" OnClick="btnAlterar_Click" />
	<asp:Button ID="btnRemover" class="btn btn-primary" runat="server" Text="Remover" Height="40px" Width="100px" OnClick="btnRemover_Click" />
	<br />
	<br />
&nbsp;
</asp:Content>

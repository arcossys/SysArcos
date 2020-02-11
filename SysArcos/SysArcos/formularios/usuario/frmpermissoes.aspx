<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmpermissoes.aspx.cs" Inherits="SysArcos.formularios.usuario.frmpermissoes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Permissões
    </div>    
    <asp:Label ID="lblLogin" runat="server" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Usuário: "></asp:Label>
    <asp:Label ID="lblUsuario" runat="server" Text="Fulano da Silva"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Telas"></asp:Label>
&nbsp;<asp:DropDownList ID="ddlTelas" runat="server" Width="200px">
    </asp:DropDownList>
&nbsp;<asp:Button ID="btnAdicionar" runat="server" Text="Adicionar" CssClass="btn btn-success" OnClick="btnAdicionar_Click" />
    <br />
    <br />
    <asp:GridView ID="grid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" Width="500px" DataKeyNames="ID">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="DESCRICAO" HeaderText="Tela/Permissão" />
            <asp:CommandField HeaderText="Selecionar" ShowSelectButton="True" />
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
    <asp:Button ID="btnVoltar" runat="server" CssClass="btn btn-primary" OnClick="btnVoltar_Click" Text="Voltar" />
&nbsp;<asp:Button ID="btnRemover" runat="server" CssClass="btn btn-primary" Text="Remover" OnClick="btnRemover_Click" />
</asp:Content>

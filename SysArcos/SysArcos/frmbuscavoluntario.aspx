<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscavoluntario.aspx.cs" Inherits="ProjetoArcos.frmbuscavoluntario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Buscar Voluntários
    </div>
    <asp:Label ID="lbl_busca" runat="server" Text="Filtro" Height="30px" Width="50px"></asp:Label>
    <asp:TextBox ID="txt_Busca" runat="server" Height="30px" Width="300px"></asp:TextBox>
    &nbsp;&nbsp;
    <asp:Button ID="btn_Busca" class="btn btn-success" runat="server" Text="Buscar" OnClick="btn_Busca_Click" />
    <br />
    <asp:RadioButtonList ID="rd_list" runat="server" RepeatDirection="Horizontal" Width="209px">
        <asp:ListItem>Nome</asp:ListItem>
        <asp:ListItem>CPF</asp:ListItem>
    </asp:RadioButtonList>
    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="3" ForeColor="#333333" GridLines="None" Width="100%" DataKeyNames="ID" ShowHeaderWhenEmpty="True" OnSelectedIndexChanged="grid_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="Nome" DataField="NOME" />
            <asp:BoundField HeaderText="CPF" DataField="CPF" />
            <asp:BoundField HeaderText="Disponibilidade" DataField="DISPONIBILIDADE" />
            <asp:BoundField HeaderText="Serviços Disponíveis" DataField="SERVICOS_DISPONIVEIS" />
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
    <asp:Button ID="btn_Voltar" runat="server" class="btn btn-primary" Font-Bold="True" Text="Cancelar" OnClick="btn_Voltar_Click" />
    <asp:Button ID="btn_Alterar" runat="server" class="btn btn-primary" Font-Bold="True" Text="Selecionar" OnClick="btn_Alterar_Click" />
    &nbsp;<asp:Button ID="btn_Remover" runat="server" class="btn btn-primary" Font-Bold="True" Text="Remover" OnClick="btn_Remover_Click" />
    &nbsp;
</asp:Content>

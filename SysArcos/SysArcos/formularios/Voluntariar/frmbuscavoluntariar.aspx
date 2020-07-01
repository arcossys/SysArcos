<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscavoluntariar.aspx.cs" Inherits="SysArcos.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="entidade">
            Buscar Voluntariar
        </div>

        <div>

    <asp:Label ID="Label1" runat="server" Text="Filtro"></asp:Label>
&nbsp;<asp:TextBox ID="txtBusca" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnBuscar" runat="server" class="btn btn-success" Text="Buscar" OnClick="btnBuscar_Click" />

    <br />
    <br />

</div>
<div>

    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" DataKeyNames="LOGIN" ShowHeaderWhenEmpty="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="DATA INICIAL" DataField="DATA_INICIAL" />
            <asp:BoundField HeaderText="DATA FINAL" DataField="DATA_FINAL" />
            <asp:BoundField HeaderText="DESCRICAO" DataField="DESCRICAO" />
            <asp:BoundField HeaderText="OBSERVACOES" DataField="OBSERVACAO" />
            <asp:BoundField HeaderText="DATA HORA CRIACAO REGISTRO" DataField="DATA_HORA_CRIACAO_REGISTRO" />
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

</div>
<div>

    <br />
    <asp:Button ID="btnCancelar" class="btn btn-primary" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />

&nbsp;&nbsp;<asp:Button ID="btnRemover" class="btn btn-primary" runat="server" Text="Remover" OnClick="btnRemover_Click" 
    OnClientClick="return confirm('Deseja remover?');"/>

</div>

</asp:Content>

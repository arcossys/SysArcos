<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscavoluntariado.aspx.cs" Inherits="ProjetoArcos.frmvoluntariado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Buscar Voluntáriado
    </div>
    <asp:Label ID="lbl_busca" runat="server" Text="Buscar"></asp:Label>
    <asp:TextBox ID="txt_Busca" runat="server"></asp:TextBox>
    <asp:Button ID="btn_Buscar" runat="server" class="btn btn-primary" Text="Buscar" OnClick="btn_Buscar_Click"/>
    <br />
    <br />
    <asp:RadioButton ID="rd_entidade" runat="server" Text="Entidade" GroupName="tipo" />
&nbsp;<asp:RadioButton ID="rd_datainicial" runat="server" Text="Data Inicial (dd/mm/aaaa)" GroupName="tipo" />
&nbsp;<asp:RadioButton ID="rd_descricao" runat="server" Text="Descrição" GroupName="tipo" />
    <br /> 

    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" DataKeyNames="ID" ShowHeaderWhenEmpty="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="Entidade" DataField="ENTIDADE.NOME" />
            <asp:BoundField HeaderText="Data Inicial" DataField="DATA_INICIAL" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField HeaderText="Data Final" DataField="DATA_FINAL" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField HeaderText="Descrição" DataField="DESCRICAO" />
            <asp:BoundField DataField="OBSERVACAO" HeaderText="Observação" />
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
    <asp:Button ID="btn_Selecionar" runat="server" class="btn btn-primary" Text="Alterar" OnClick="btn_Selecionar_Click" />
&nbsp;<asp:Button ID="btn_Cancelar" runat="server" class="btn btn-primary" Text="Cancelar" OnClick="btn_Cancelar_Click" />
&nbsp;<asp:Button ID="btn_Remover" runat="server" class="btn btn-primary" Text="Remover" OnClick="btn_Remover_Click" 
    OnClientClick="return confirm('Deseja remover?');"/>
</asp:Content>

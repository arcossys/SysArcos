<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscarecurso.aspx.cs" Inherits="SysArcos.formularios.recurso.frmBuscaRecurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Buscar Recursos
    </div>
    <div>

        <asp:Label ID="lbBuscar" runat="server" Text="Filtro"></asp:Label>
&nbsp;<asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-success" Text="Buscar" />

    </div>
    <div>

        <asp:RadioButton ID="rbNome" runat="server" Text="Nome" />
&nbsp;<asp:RadioButton ID="rbDescricao" runat="server" Text="Descrição" />

    </div>
    <div>

        <asp:GridView ID="gridBusca" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField HeaderText="Nome" />
                <asp:BoundField HeaderText="Descrição" />
                <asp:BoundField HeaderText="Entidade" />
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

        <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Cancelar" />
&nbsp;<asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" Text="Alterar" />
&nbsp;<asp:Button ID="Button4" runat="server" CssClass="btn btn-primary" Text="Remover" />

    </div>
</asp:Content>

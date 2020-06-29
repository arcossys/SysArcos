<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscatiporecurso.aspx.cs" Inherits="ProjetoArcos.frmbuscatiporecurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Buscar Tipo Recurso
    </div>
    <p>
        <asp:Label ID="lblbuscar" runat="server" Text="Buscar"></asp:Label>
&nbsp;<asp:TextBox ID="txtbusca" runat="server"></asp:TextBox>
&nbsp;
        <asp:Button ID="btnbuscar" runat="server" Text="Buscar" OnClick="btnbuscar_Click" CssClass="btn btn-success" />
    </p>
    <p>
        <asp:RadioButton ID="rddescricao" runat="server" Text="Descrição" />
&nbsp;</p>
    <p>
        <asp:GridView ID="Grid" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" ForeColor="#333333" GridLines="None" Width="600px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="DESCRICAO" HeaderText="RECURSO" />
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
    </p>
    <p>
        <asp:Button ID="btnvoltar" runat="server" Text="Cancelar" CssClass="btn btn-primary" OnClick="btnvoltar_Click" />
&nbsp;
        <asp:Button ID="btnselecionar" runat="server" Text="Editar" OnClick="btnselecionar_Click" CssClass="btn btn-primary" />
&nbsp;
        <asp:Button ID="btnremover" runat="server" Text="Remover" OnClick="btnremover_Click" CssClass="btn btn-primary" 
            OnClientClick="return confirm('Deseja remover?');"/>
    </p>
</asp:Content>

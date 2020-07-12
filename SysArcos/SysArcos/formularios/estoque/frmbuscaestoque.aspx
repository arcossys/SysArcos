<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscaestoque.aspx.cs" Inherits="SysArcos.formularios.estoque.frmbuscaestoque" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Buscar Estoque
    </div>
    <div class="form-inline">

        <asp:Label ID="lblEntidade" runat="server" Text="Entidade" for="ddlEntidade"></asp:Label>
        &nbsp;
        <div class="input-control">
            <asp:DropDownList ID="ddlEntidade" runat="server" CssClass="form-control" Width="300px">
            </asp:DropDownList>
        </div>
        

    </div>
    <br />
    <div class="form-inline">
        <asp:Label ID="Label2" runat="server" Text="Produto"></asp:Label>
        &nbsp;
        <div class="input-control">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="300px"></asp:TextBox>
        </div>
&nbsp;<asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Buscar" />

    </div>
    <br />
    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField HeaderText="Produto" />
                <asp:BoundField HeaderText="Quantidade" />
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

        <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-primary" OnClick="btnCancelar_Click" Text="Cancelar" />
&nbsp;<asp:Button ID="btnEditar" runat="server" CssClass="btn btn-primary" Text="Editar" />
&nbsp;<asp:Button ID="btnRemover" runat="server" CssClass="btn btn-primary" Text="Remover" />

    </div>
</asp:Content>

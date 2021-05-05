<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscacategoria_produto.aspx.cs" Inherits="SysArcos.formularios.categoria_produto.frmbuscacategoria_produto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-1 col-md-12" style="margin-top:10px" >
            <asp:Label ID="lblBusca" runat="server"   Width="100%" Height="40px" Font-Size="X-Large" Text="Buscar:"></asp:Label>
        </div>
        <div class="col-lg-9 col-md-12">
            <asp:TextBox ID="txtBuscar" runat="server" Width="100%" MaxLength="50" Height="40px" placeholder="Pesquisar..."></asp:TextBox>
        </div>
        <div class="col-lg-2 col-md-12">
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="100%" Font-Size="Large" class="btn btn-success" OnClick="btnBuscar_Click"/>
        </div>
    </div> 
    <div style="margin-top:10px">
        <asp:GridView ID="gridBusca" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="500px" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="DESCRICAO" HeaderText="Tipos Produtos" />
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
    <div class="row"> 
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="brnCancelar" runat="server" CssClass="btn btn-primary" Text="Cancelar" OnClick="brnCancelar_Click" Width="100%" Font-Size="X-Large" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btnEditar" runat="server" CssClass="btn btn-primary" Text="Editar" OnClick="btnEditar_Click" Width="100%" Font-Size="X-Large" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">        
            <asp:Button ID="btnRemover" runat="server" CssClass="btn btn-primary" Text="Remover" OnClientClick="return confirm('Deseja remover?');" OnClick="btnRemover_Click" Width="100%" Font-Size="X-Large" />
        </div>
    </div>
</asp:Content>

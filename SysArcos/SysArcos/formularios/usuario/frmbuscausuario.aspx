<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscausuario.aspx.cs" Inherits="ProjetoArcos.frmbuscausuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="entidade">
    Buscar Usuários
</div>
    <div>
    <div class="row">
                <div class="col-12 col-lg-4">
                    <asp:Label ID="Label1" runat="server" Text="Filtro"></asp:Label>&nbsp;<asp:TextBox ID="txtBusca" runat="server" Width="100%" MaxLength="50" Height="40px"></asp:TextBox>

                    <div class="col-12 col-lg-4 row_buttons">
                        <asp:Button ID="btnBuscar" runat="server" class="btn btn-success" Text="Buscar" OnClick="btnBuscar_Click" Width="100%" Font-Size="X-Large" />
                    </div>
                </div>
    </div>


    <br />

    <div class="col-12 col-lg-4 row_buttons">
        <asp:RadioButton ID="rdNome" runat="server" Checked="True" GroupName="filtro" Text="Nome" Width="100%" Font-Size="X-Large" />
    </div>

    <div class="col-12 col-lg-4 row_buttons">
        <asp:RadioButton ID="rdLogin" runat="server" GroupName="filtro" Text="Login" Width="100%" Font-Size="X-Large" />
    </div>
    <br />

</div>
<div>

    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" DataKeyNames="LOGIN" ShowHeaderWhenEmpty="True" PageSize="20" AllowPaging="True" OnPageIndexChanging="grid_PageIndexChanging" OnSelectedIndexChanged="grid_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="Nome" DataField="NOME" />
            <asp:BoundField HeaderText="Login" DataField="LOGIN" />
            <asp:BoundField HeaderText="CPF" DataField="CPF" />
            <asp:BoundField HeaderText="E-mail" DataField="EMAIL" />
            <asp:BoundField DataField="GRUPO_PERMISSAO.DESCRICAO" HeaderText="Permissão" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        
        <PagerSettings Position="Bottom"
    PreviousPageText=""
    NextPageText=""
    FirstPageText="Primeiro | "
    LastPageText="| Último" PageButtonCount="20" />
        
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" 
            CssClass="GridPager"/>
        
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
<div class="row">

    <div class="col-12 col-lg-4 row_buttons">
        <asp:Button ID="btnCancelar" class="btn btn-primary" runat="server" Text="Cancelar" OnClick="btnCancelar_Click"  Width="100%" Font-Size="X-Large"/>
    </div>

    <div class="col-12 col-lg-4 row_buttons">
        <asp:Button ID="btnSelecionar" class="btn btn-primary" runat="server" Text="Editar" OnClick="btnSelecionar_Click"  Width="100%" Font-Size="X-Large" />
    </div>

    <div class="col-12 col-lg-4 row_buttons">
        <asp:Button ID="btnRemover" class="btn btn-primary" runat="server" Text="Remover" OnClick="btnRemover_Click" Width="100%" Font-Size="X-Large" OnClientClick="return confirm('Deseja remover?);"/> />
    </div>

    

&nbsp;</div>
</asp:Content>
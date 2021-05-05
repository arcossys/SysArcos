<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscagrupopermissao.aspx.cs" Inherits="SysArcos.formularios.usuario.frmbuscagrupopermissao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Buscar Grupo Permissão
    </div>
    <div>
<div>
<div class="row">
<div class="col-12 col-lg-4">
<asp:Label ID="Label1" runat="server" Text="Filtro"></asp:Label>
<asp:TextBox ID="txtBusca" runat="server"  Width="100%" MaxLength="50" Height="40px" ></asp:TextBox>
</div>

<div class="col-12 col-lg-4 row_buttons">
<asp:Button ID="btnBuscar" runat="server" class="btn btn-success" Text="Buscar" OnClick="btnBuscar_Click" Width="100%" Font-Size="X-Large" />
</div>



    <br />
&nbsp;<br />

</div>
    </div>

<div>

    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="500px" DataKeyNames="ID" ShowHeaderWhenEmpty="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField HeaderText="Grupo Permissão" DataField="DESCRICAO" />
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
    

<div class="row">

<div class="col-12 col-lg-4 row_buttons"> 
<asp:Button ID="btnCancelar" class="btn btn-primary" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" Width="100%" Font-Size="X-Large" />
</div>


<div class="col-12 col-lg-4 row_buttons"> 
<asp:Button ID="btnSelecionar" class="btn btn-primary" runat="server" Text="Editar" OnClick="btnSelecionar_Click" Width="100%" Font-Size="X-Large" />
</div>

<div class="col-12 col-lg-4 row_buttons"> 
<asp:Button ID="btnRemover" class="btn btn-primary" runat="server" Text="Remover" OnClick="btnRemover_Click" OnClientClick="return confirm('Deseja remover?');" Width="100%" Font-Size="X-Large"/>
 </div>

&nbsp;</div>
</asp:Content>

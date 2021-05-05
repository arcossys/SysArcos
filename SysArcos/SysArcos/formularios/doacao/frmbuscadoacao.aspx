<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscadoacao.aspx.cs" Inherits="SysArcos.formularios.doacao.frmbuscadoacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Buscar Doação
    </div>    
    <div class="row">
        <div class="col-lg-1 col-md-12">
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" width="100%" Text="Filtro:"></asp:Label>
        </div>
        <div class="col-lg-9 col-md-12">       
            <asp:TextBox ID="TextBox1" Font-Size="Larger" width="100%" MaxLength="50" Height="40px" placeholder="Pesquisar..." runat="server"></asp:TextBox>
        </div>
        <div class="col-lg-2 col-md-12">
            <asp:Button ID="Button4" runat="server"  Font-Size="Larger" width="100%" Text="Buscar" CssClass="btn btn-success" />
        </div>
    </div>  
    <div class="row">
        <div class="col-lg-2 col-md-12">
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Entidade" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Doador" />
        </div>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField HeaderText="Entidade" />
                <asp:BoundField HeaderText="Doador" />
                <asp:BoundField HeaderText="Data" />
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
    <br/>
    <div class="row">        
        <div class="col-12 col-lg-4 row_buttons">    
            <asp:Button ID="Button1" runat="server" Text="Cancelar"  CssClass="btn btn-primary" OnClick="Button1_Click" Width="100%" Font-Size="X-Large" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">   
            <asp:Button ID="Button2" runat="server" Text="Editar" CssClass="btn btn-primary" Width="100%" Font-Size="X-Large" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">       
            <asp:Button ID="Button3" runat="server" Text="Remover" CssClass="btn btn-primary" Width="100%" Font-Size="X-Large" />
        </div>
    </div>
</asp:Content>

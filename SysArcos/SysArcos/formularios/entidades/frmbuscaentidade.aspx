<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscaentidade.aspx.cs" Inherits="ProjetoArcos.frmbuscaentidade" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Buscar Entidade
    </div>
        <div class="row">
            <div class="col-lg-10 col-md-12">
                   <asp:TextBox ID="txtbusca" runat="server"  Width="100%" MaxLength="50" Height="40px"  placeholder="Pesquisar..."></asp:TextBox>                    
               </div>    

               <div class="col-lg-2 col-md-12">
                   <asp:Button ID="btnbuscar" runat="server" Width="100%" Font-Size="Larger" class="btn btn-success" OnClick="btnbuscar_Click" Text="Buscar" />                 
               </div>
         </div>
    
   
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                    <asp:CheckBox ID="ckAtivo" runat="server" Font-Size="Larger" Checked="True" Text="Usuários ativos" />
             </div>
            <div class="col-lg-12 col-md-12 col-sm-12">
                
                    <asp:RadioButton ID="rdnome" runat="server" Font-Size="Medium" Text="Nome" GroupName="filtro" Checked="True" />                
                    <asp:RadioButton ID="rdcidade" runat="server" Font-Size="Medium" Text="Cidade" GroupName="filtro" />
                    <asp:RadioButton ID="rdpresidente" runat="server" Font-Size="Medium" Text="Presidente" GroupName="filtro" />
                    <asp:RadioButton ID="rdCNPJ" runat="server" Font-Size="Medium" Text="CNPJ" GroupName="filtro" />
                    <br/>
                
            </div>           
        </div>
        
     
 
        
    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" DataKeyNames="ID" ShowHeaderWhenEmpty="True" AllowPaging="True" OnPageIndexChanging="grid_PageIndexChanging" PageSize="20">
       
        
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="NOME" HeaderText="Nome" />
            <asp:BoundField DataField="CIDADE" HeaderText="Cidade" />
            <asp:BoundField DataField="PRESIDENTE" HeaderText="Presidente" />
            <asp:BoundField DataField="CNPJ" HeaderText="CNPJ" />
            <asp:CommandField ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" CssClass="GridPager"/>
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
       <div class="row">
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btncancelar" runat="server" OnClick="btncancelar_Click" Text="Cancelar" CssClass="btn btn-primary"  Width="100%" Font-Size="X-Large" />
                 
         </div>

        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btnselecionar" runat="server" OnClick="btnselecionar_Click" Text="Editar" CssClass="btn btn-primary" Width="100%" Font-Size="X-Large" />
        </div>
        
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btnremover" runat="server" OnClick="btnremover_Click" Text="Remover" CssClass="btn btn-primary" OnClientClick="return confirm('Deseja remover?');" Width="100%" Font-Size="X-Large"/>
        </div>
    
       </div>
        </asp:Content>
    
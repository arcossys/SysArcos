<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmcategoria_produto.aspx.cs" Inherits="ProjetoArcos.frmcategoria_produto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Tipo de Produto
    </div>
    <div class="acao">
        <asp:Label ID="lblAcao" runat="server"></asp:Label>
    </div>
    <div>
        <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>
    </div>  
    <div class="row">
        <div class="col-4 col-lg-1">
            <asp:Label ID="lblcategoria" runat="server" Text="Categoria:"></asp:Label>      
        </div>            
    </div>
    <div class="row">
        <div class="col-12 col-lg-4">
            <asp:TextBox ID="txtcategoria" class="form-control"  runat="server" Width="100%" MaxLength="50" Height="40px" ></asp:TextBox>
        </div>
    </div>    
    <div class="row"> 
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btnNovo" runat="server" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" Width="100%" Font-Size="X-Large" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btncadastrar" runat="server" class="btn btn-primary" Text="Cadastrar" OnClick="btncadastrar_Click" Width="100%" Font-Size="X-Large" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-primary" Text="Buscar" OnClick="btnBuscar_Click" Width="100%" Font-Size="X-Large" />
        </div>
    </div>    
</asp:Content>

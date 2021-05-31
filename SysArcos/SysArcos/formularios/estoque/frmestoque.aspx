<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmestoque.aspx.cs" Inherits="SysArcos.formularios.estoque.frmestoque" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="entidade row">
            Estoque
        </div>
        <div class="row">
            <div class="acao col-12 col-lg-10 row_fields">        
                <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="Label1" runat="server" Text="Entidade"></asp:Label>
            </div>
            <div class="col-12 col-lg-4">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="Label2" runat="server" Text="Produto"></asp:Label>
            </div>
            <div class="col-12 col-lg-4">
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="Label3" runat="server" Text="Quantidade"></asp:Label>
            </div>
            <div class="col-4 col-lg-3">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="Button1" runat="server" Font-Size="X-Large" Width="100%" CssClass="btn btn-primary" Text="Novo" />
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="Button2" runat="server" Font-Size="X-Large" Width="100%" CssClass="btn btn-primary" Text="Salvar" />
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="Button3" runat="server" Font-Size="X-Large" Width="100%" CssClass="btn btn-primary" Text="Buscar" OnClick="Button3_Click" />
            </div>
        </div>
    </div>
</asp:Content>

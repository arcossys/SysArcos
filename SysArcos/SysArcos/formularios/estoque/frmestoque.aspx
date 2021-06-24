<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmestoque.aspx.cs" Inherits="SysArcos.formularios.estoque.frmestoque" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="entidade row">
            Estoque
        </div>

        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="form" />
        </div>

        <div class="row">
            <div class="acao col-12 row_fields">        
                <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-6">
                <div class="row_fields">
                    <asp:Label ID="lblEntidade" runat="server" Text="Entidade"></asp:Label>
                    :
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlEntidade" ErrorMessage="Entidade está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:DropDownList ID="ddlEntidade" runat="server" CssClass="form-control" ValidationGroup="form">
                    </asp:DropDownList>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-6">
                <div class="row_fields">
                    <asp:Label ID="Label2" runat="server" Text="Produto"></asp:Label>
                    :
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlProduto" ErrorMessage="Produto está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:DropDownList ID="ddlProduto" runat="server" CssClass="form-control" ValidationGroup="form">
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-lg-2">
                <div class="row_fields">
                    <asp:Label ID="Label3" runat="server" Text="Quantidade"></asp:Label>
                    :
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQuantidade" ErrorMessage="Quantidade está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:TextBox ID="txtQuantidade" runat="server" CssClass="form-control" TextMode="Number" ValidationGroup="form"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="Button1" runat="server" Width="100%" CssClass="btn btn-primary" Text="Novo" />
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="Button2" runat="server" Width="100%" CssClass="btn btn-primary" Text="Salvar" ValidationGroup="form" />
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="Button3" runat="server" Width="100%" CssClass="btn btn-primary" Text="Buscar" OnClick="Button3_Click" />
            </div>
        </div>
    </div>
</asp:Content>

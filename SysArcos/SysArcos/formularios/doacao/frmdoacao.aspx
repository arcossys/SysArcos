<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmdoacao.aspx.cs" Inherits="SysArcos.formularios.doacao.frmdoacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Doação
    </div>    
    <div class="row">
        <div class="col-12 col-lg-10 row_fields">
            <asp:Label ID="Label1" runat="server" Text="Entidade"></asp:Label>
        </div>
        <div class="col-12 col-lg-4">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="100%">
            </asp:DropDownList>
        </div>     
    </div>
    <div class="row">
        <div class="col-12 col-lg-10 row_fields">
            <asp:Label ID="Label2" runat="server" Text="Doador"></asp:Label>
        </div>
        <div class="col-12 col-lg-4">
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" Width="100%">
            </asp:DropDownList>
        </div>
    </div>
    <div class="row">
        <div class="col-12 col-lg-10 row_fields">
            <asp:Label ID="Label3" runat="server" Text="Data"></asp:Label>
        </div>
        <div class="col-12 col-lg-4">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Date" Width="100%"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-12 col-lg-10 row_fields">
            <asp:Label ID="Label4" runat="server" Text="Descrição"></asp:Label>
        </div>
        <div class="col-12 col-lg-4">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-12 col-lg-10 row_fields">
            <asp:Label ID="Label5" runat="server" Text="Observações"></asp:Label>
        </div>
        <div class="col-12 col-lg-4">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Font-Size="X-Large" Width="100%" Text="Novo" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Font-Size="X-Large" Width="100%" Text="Salvar" OnClick="Button2_Click" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" Font-Size="X-Large" Width="100%" Text="Buscar" OnClick="Button3_Click" />
        </div>
    </div>
</asp:Content>

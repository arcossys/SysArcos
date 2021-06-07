<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmdoacao.aspx.cs" Inherits="SysArcos.formularios.doacao.frmdoacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Doação
    </div>    
    <div class="row">
        <div class="col-12 col-lg-6 row_fields">
            <asp:Label ID="lblEntidade" runat="server" Text="Entidade"></asp:Label>
            <asp:DropDownList ID="ddlEntidade" runat="server" CssClass="form-control" Width="100%">
            </asp:DropDownList>
        </div>   
        
        <div class="col-12 col-lg-6 row_fields">
            <asp:Label ID="lblDoador" runat="server" Text="Doador"></asp:Label>
            <asp:DropDownList ID="ddlDoador" runat="server" CssClass="form-control" Width="100%">
            </asp:DropDownList>
        </div>
    </div>

    <div class="row">
        <div class="col-12 col-lg-6 row_fields">
            <asp:Label ID="lblData" runat="server" Text="Data"></asp:Label>
            <asp:TextBox ID="txtData" runat="server" CssClass="form-control" TextMode="Date" Width="100%"></asp:TextBox>
        </div>

        <div class="col-12 col-lg-6 row_fields">
            <asp:Label ID="lblDoacao" runat="server" Text="Doação"></asp:Label>
            <asp:TextBox ID="txtDoacao" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-12 col-lg-12 row_fields">
            <asp:Label ID="lblObs" runat="server" Text="Observações"></asp:Label>
            <asp:TextBox ID="txtObs" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Width="100%" Text="Novo" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Width="100%" Text="Salvar" OnClick="Button2_Click" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" Width="100%" Text="Buscar" OnClick="Button3_Click" />
        </div>
    </div>
</asp:Content>

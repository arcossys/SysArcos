<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmproduto.aspx.cs" Inherits="ProjetoArcos.frmproduto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="entidade row">
            Produtos
        </div>
      
        <div class="row">
            <div class="acao col-12">
                <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
            </div>
        </div>
      
        <div class="row">
            <asp:Label ID="lblID" runat="server"></asp:Label>
        </div>
      
        <div class="row">
            <div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="lbl_user" runat="server" Text="Descrição:"></asp:Label>
            </div>
            <div class="col-12 col-lg-4">
                <asp:TextBox ID="txt_descricao" class="form-control" runat="server" MaxLength="30"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="Label1" runat="server" Text="Especificação:"></asp:Label>
            </div>
            <div class="col-12 col-lg-4">
                <asp:TextBox ID="txt_especificacao" class="form-control" runat="server" MaxLength="30"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="lbl_unidade" runat="server" Text="Unidade:"></asp:Label>
            </div>
            <div class="col-12 col-lg-4">
                <asp:TextBox ID="txt_unidade" class="form-control" runat="server" MaxLength="30"></asp:TextBox>
            </div>
        </div>
      
        <div class="row">
            <div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="Label2" runat="server" Text="Categoria"></asp:Label>
            </div>
            <div class="col-12 col-lg-4">
                <asp:DropDownList ID="dlCategoria" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control">
                    <asp:ListItem Text=""></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
      
        <div class="row">
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="btnNovo" runat="server" Font-Size="X-Large" Width="100%" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" />
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="btn_cadastrar" Width="100%" Font-Size="X-Large" class="btn btn-primary" runat="server" Text="Salvar" OnClick="btn_cadastrar_Click" />
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="btn_buscar" class="btn btn-primary" Font-Size="X-Large" Width="100%" runat="server" Text="Buscar" OnClick="btn_buscar_Click" />
            </div>
        </div>
    </div>

</asp:Content>

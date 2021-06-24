<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmproduto.aspx.cs" Inherits="ProjetoArcos.frmproduto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="entidade row">
            Produtos
        </div>
      
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="form" />
        </div>

        <div class="row">
            <div class="acao col-12">
                <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
            </div>
        </div>
      
        <div class="row">
            <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>
        </div>
      
        <div class="row">
            <div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="lbl_user" runat="server" Text="Descrição:"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_descricao" ErrorMessage="Descrição está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            </div>
            <div class="col-12 col-lg-4">
                <asp:TextBox ID="txt_descricao" class="form-control" runat="server" MaxLength="30" ValidationGroup="form"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="Label1" runat="server" Text="Especificação:"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_especificacao" ErrorMessage="Especificação está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            </div>
            <div class="col-12 col-lg-4">
                <asp:TextBox ID="txt_especificacao" class="form-control" runat="server" MaxLength="30" ValidationGroup="form"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="lbl_unidade" runat="server" Text="Unidade:"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_unidade" ErrorMessage="Unidade está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            </div>
            <div class="col-12 col-lg-4">
                <asp:TextBox ID="txt_unidade" class="form-control" runat="server" MaxLength="30" ValidationGroup="form"></asp:TextBox>
            </div>
        </div>
      
        <div class="row">
            <div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="Label2" runat="server" Text="Categoria"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dlCategoria" ErrorMessage="Categoria está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            </div>
            <div class="col-12 col-lg-4">
                <asp:DropDownList ID="dlCategoria" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control" ValidationGroup="form">
                    <asp:ListItem Text=""></asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
      
        <div class="row">
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="btnNovo" runat="server" Width="100%" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" />
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="btn_cadastrar" Width="100%" class="btn btn-primary" runat="server" Text="Salvar" OnClick="btn_cadastrar_Click" ValidationGroup="form" />
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="btn_buscar" class="btn btn-primary" Width="100%" runat="server" Text="Buscar" OnClick="btn_buscar_Click" />
            </div>
        </div>
    </div>

</asp:Content>

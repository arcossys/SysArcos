<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmtipoevento.aspx.cs" Inherits="ProjetoArcos.frmTipoEvento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Tipo de Evento
    </div>

    <div >
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="form" />
    </div>

    <div class="acao">
        <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
    </div>

    <div>
        <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>
    </div>
    <br />
    <div class="form-group">
        <div class="row">
            <div class="col-12 col-lg-4">
                <asp:Label ID="lblTipoEvento" runat="server" Text="Tipo de Evento"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTipoEvento" ErrorMessage="Tipo de Evento está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtTipoEvento" runat="server" Width="100%" MaxLength="50" CssClass="form-control" ValidationGroup="form"></asp:TextBox>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="col-12 col-lg-4">
                <asp:Label ID="lblDescricao" runat="server" Text="Descrição"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDescricaoEvento" ErrorMessage="Descrição está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtDescricaoEvento" runat="server" Width="100%" MaxLength="50" CssClass="form-control" TextMode="MultiLine" ValidationGroup="form"></asp:TextBox>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Novo" Width="100%"/>
        </div>

        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btnCadastrarTipoEvento" class="btn btn-success" runat="server" OnClick="btnCadastrarTipoEvento_Click" Text="Salvar" CssClass="btn btn-primary" Width="100%" ValidationGroup="form"/>
        </div>

        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" OnClick="Button2_Click" Text="Buscar" Width="100%"/>
        </div>
    </div>
</asp:Content>

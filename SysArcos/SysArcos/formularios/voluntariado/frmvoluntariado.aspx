<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmvoluntariado.aspx.cs" Inherits="ProjetoArcos.frmvoluntariado1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Voluntariado
    </div>
    <div class="acao" >
        <asp:Label ID="lbl_acao" runat="server" Text="NOVO"></asp:Label>
    </div>
    <p>
        <asp:Label ID="lblEntidade" runat="server" Text="Entidade"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlEntidade" ErrorMessage="Campo Obrigatório" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
        <asp:DropDownList ID="ddlEntidade" class="form-control" MaxLength="50" Width="300px" runat="server" ValidationGroup="form">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="lblDataini" runat="server" Text="Data Inicial"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDataini" ErrorMessage="Campo obrigatório" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtDataini" class="form-control" runat="server" MaxLength="50" Width="300px" Placeholder="DD/MM/AAAA" TextMode="Date" ValidationGroup="form"></asp:TextBox>
    </p>
    <p>
        &nbsp;<asp:Label ID="lblDataFinal" runat="server" Text="Data Final"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDatafinal" ErrorMessage="Campo obrigatório" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtDatafinal" class="form-control" runat="server" MaxLength="50" Width="300px" Placeholder="DD/MM/AAAA" TextMode="Date" ValidationGroup="form"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblDescricao" runat="server" Text="Descrição"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDesc" ErrorMessage="Campo obrigatório" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtDesc" class="form-control" runat="server" MaxLength="255" Width="300px" ValidationGroup="form"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblObser" runat="server" Text="Observação"></asp:Label>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtObser" ErrorMessage="Campo obrigatório" ForeColor="Red" ValidationGroup="form"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtObser" class="form-control" runat="server" MaxLength="255" Width="300px" ValidationGroup="form"></asp:TextBox>
    </p>

    <p>
        <asp:Button ID="btnNovo" runat="server" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" />
        &nbsp;<asp:Button ID="btnSalvar" runat="server" class="btn btn-primary" OnClick="btnSalvar_Click" Text="Salvar" ValidationGroup="form" />
        &nbsp;<asp:Button ID="btnBusca" runat="server" class="btn btn-primary" OnClick="btnBusca_Click" Text="Busca" />
    </p>

</asp:Content>

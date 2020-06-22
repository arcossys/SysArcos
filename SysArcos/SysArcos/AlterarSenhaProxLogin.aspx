<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AlterarSenhaProxLogin.aspx.cs" Inherits="SysArcos.AlterarSenhaProxLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin: 0 auto;width:250px">
        <h2>Altere sua senha</h2>
        <div class="form-group">
            <asp:Label ID="lblSenhaAtual" runat="server" Text="Senha Atual"></asp:Label>
            <asp:TextBox ID="txtSenhaAtual" runat="server" TextMode="Password" class="form-control" Width="200px"></asp:TextBox>
        </div>
        <div class="form-group">

            <asp:Label ID="lblNovaSenha" runat="server" Text="Nova Senha"></asp:Label>
            <asp:TextBox ID="txtNovaSenha" runat="server" TextMode="Password" class="form-control" Width="200px"></asp:TextBox>

        </div>
        <div class="form-group">

            <asp:Label ID="lblRepetirNovaSenha" runat="server" Text="Repetir Nova Senha"></asp:Label>
            <asp:TextBox ID="txtRepetirNovaSenha" runat="server" TextMode="Password" class="form-control" Width="200px"></asp:TextBox>

        </div>
        <div>

            <asp:Button ID="btnAlterarSenha" runat="server" Text="Alterar Senha" class="btn btn-primary" OnClick="btnAlterarSenha_Click"/>

        </div>
    </div>
</asp:Content>

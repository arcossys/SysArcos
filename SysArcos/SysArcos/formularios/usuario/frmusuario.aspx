<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmusuario.aspx.cs" Inherits="ProjetoArcos.formusuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="entidade col-12">
            Usuarios
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="form" />
            
        </div>
    </div>

    <div class="row">
        <div class="acao col-12">
            <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
        </div>
    </div>

    <div class="row">
        <div class="col-12 col-lg-4 row_fields">
            <asp:Label ID="lbl_user" runat="server" Text="Usuário:"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_user" ErrorMessage="Campo Usuário vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="txt_user" class="form-control" runat="server" Width="100%" MaxLength="50" Height="40px" ValidationGroup="form"></asp:TextBox>
        </div>

        <div class="col-12 col-lg-4 row_fields">
            <asp:Label ID="lbl_senha" runat="server" Text="Senha:"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_senhaUsuario" ErrorMessage="Campo Senha Vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txt_senhaUsuario" type="password" class="form-control" runat="server" MaxLength="8" Placeholder="max: 8 dig" Width="100%" Height="40px" ValidationGroup="form"></asp:TextBox>
        </div>

        <div class="col-12 col-lg-4 row_fields">
            <asp:Label ID="lbl_email" runat="server" Text="E-mail"></asp:Label>
            :
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_email" ErrorMessage="Campo E-mail vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txt_email" ErrorMessage="Formato de e-mail inválido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            &nbsp;<asp:TextBox ID="txt_email" class="form-control" runat="server" MaxLength="50" Width="100%" ValidationGroup="form"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-12 col-lg-4 row_fields">
            <asp:Label ID="lbl_nomeUsuario" runat="server" Text="Nome:"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_nomeUsuario" ErrorMessage="Campo Nome vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txt_nomeUsuario" class="form-control" runat="server" Width="100%" MaxLength="50" Height="40px" ValidationGroup="form"></asp:TextBox>
        </div>

        <div class="col-12 col-lg-4 row_fields">
            <asp:Label ID="lbl_cpf" runat="server" Text="CPF:"></asp:Label>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_cpf" ErrorMessage="Campo CPF vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="revCPF" runat="server" ControlToValidate="txt_cpf" ErrorMessage="Formato de CPF inválido" ForeColor="Red" ValidationExpression="[0-9]{3}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{2}"></asp:RegularExpressionValidator>
            <asp:TextBox ID="txt_cpf" class="form-control" runat="server" MaxLength="50" Placeholder="999.999.999-99" Width="100%" onkeydown="mascara( this,CPF  );" ValidationGroup="form"></asp:TextBox>
        </div>

        <div class="col-12 col-lg-4 row_fields">
            <asp:Label ID="lbl_permissao" runat="server" Text="Permissão"></asp:Label>
            :
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlPermissao" ErrorMessage="RequiredFieldValidator" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
&nbsp;<asp:DropDownList ID="ddlPermissao" runat="server" class="form-control" WMaxLength="50" Width="100%" ValidationGroup="form">
            </asp:DropDownList>
        </div>
    </div>

    <div class="row_fields">
        <asp:CheckBox ID="ckAdministrador" runat="server" Text="Administrador" />
    </div>

    <div class="row_fields">
        <asp:CheckBox ID="CB_ativo" type="checkbox" runat="server" BorderColor="Black" Checked="True" Text="Ativo" />
    </div>

    <div class="row_fields">
        <asp:CheckBox ID="CB_AlteraProxLogin" type="checkbox" runat="server" BorderColor="Black" Checked="False" Text="Alterar Senha Próximo Login" />
    </div>

    <div class="row">
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btnNovo" runat="server" class="btn btn-primary" Width="100%" Text="Novo" OnClick="btnNovo_Click" />
        </div>

        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btn_cadastrar" class="btn btn-primary" runat="server" Width="100%" Text="Salvar" OnClick="btn_cadastrar_Click" ValidationGroup="form" />
        </div>

        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btn_buscar" class="btn btn-primary" runat="server" Width="100%" Text="Buscar" OnClick="btn_buscar_Click" />
        </div>

    </div>

</asp:Content>

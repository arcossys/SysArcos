<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmfornecedor.aspx.cs" Inherits="SysArcos.frmfornecedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="entidade row">
            Fornecedores
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
            <div class="col-12 col-lg-8 row_fields">
                <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" ErrorMessage="Nome está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" MaxLength="50" ValidationGroup="form"></asp:TextBox>
            </div>

            <div class="col-12 col-lg-4 row_fields">
                <asp:Label ID="Label1" runat="server" Text="CNPJ"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCNPJ" ErrorMessage="CNPJ está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtCNPJ" runat="server" CssClass="form-control" Placeholder="999.999.999-99" MaxLength="18" onkeydown="mascara( this,CNPJ  );" ValidationGroup="form"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-8 row_fields">
                <asp:Label ID="Label3" runat="server" Text="Logradouro"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLogradouro" ErrorMessage="Logradouro está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtLogradouro" runat="server" CssClass="form-control" MaxLength="50" ValidationGroup="form"></asp:TextBox>
            </div>

            <div class="col-12 col-lg-4 row_fields">
                <asp:Label ID="Label4" runat="server" Text="Número"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNumero" ErrorMessage="Número está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtNumero" runat="server" CssClass="form-control" MaxLength="10" ValidationGroup="form"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-8 row_fields">
                <asp:Label ID="Label5" runat="server" Text="Bairro"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBairro" ErrorMessage="Bairro está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtBairro" runat="server" CssClass="form-control" MaxLength="30" ValidationGroup="form"></asp:TextBox>
            </div>

            <div class="col-12 col-lg-4 row_fields">
                <asp:Label ID="Label6" runat="server" Text="CEP"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCEP" ErrorMessage="CEP está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtCEP" runat="server" CssClass="form-control" Placeholder="99999-999" MaxLength="9" onkeydown="mascara( this,CEP  );" ValidationGroup="form"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-8 row_fields">
                <asp:Label ID="Label7" runat="server" Text="Cidade"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCidade" ErrorMessage="Cidade está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtCidade" runat="server" CssClass="form-control" MaxLength="40" ValidationGroup="form"></asp:TextBox>
            </div>

            <div class="col-12 col-lg-4 row_fields">
                <asp:Label ID="Label8" runat="server" Text="Estado"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlEstado" ErrorMessage="Estado está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:DropDownList ID="ddlEstado" runat="server" CssClass="form-control" Width="100%" ValidationGroup="form">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>AL</asp:ListItem>
                    <asp:ListItem>AP</asp:ListItem>
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>BA</asp:ListItem>
                    <asp:ListItem>CE</asp:ListItem>
                    <asp:ListItem>DF</asp:ListItem>
                    <asp:ListItem>ES</asp:ListItem>
                    <asp:ListItem>GO</asp:ListItem>
                    <asp:ListItem>MA</asp:ListItem>
                    <asp:ListItem>MT</asp:ListItem>
                    <asp:ListItem>MS</asp:ListItem>
                    <asp:ListItem>MG</asp:ListItem>
                    <asp:ListItem>PA</asp:ListItem>
                    <asp:ListItem>PB</asp:ListItem>
                    <asp:ListItem>PR</asp:ListItem>
                    <asp:ListItem>PE</asp:ListItem>
                    <asp:ListItem>PI</asp:ListItem>
                    <asp:ListItem>RJ</asp:ListItem>
                    <asp:ListItem>RN</asp:ListItem>
                    <asp:ListItem>RS</asp:ListItem>
                    <asp:ListItem>RO</asp:ListItem>
                    <asp:ListItem>RR</asp:ListItem>
                    <asp:ListItem>SC</asp:ListItem>
                    <asp:ListItem>SP</asp:ListItem>
                    <asp:ListItem>SE</asp:ListItem>
                    <asp:ListItem>TO</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-12 row_fields">
                <asp:Label ID="Label9" runat="server" Text="Observação"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtObs" ErrorMessage="Observação está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtObs" runat="server" CssClass="form-control" MaxLength="255" TextMode="MultiLine" ValidationGroup="form"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="btnNovo" runat="server" Text="Novo" CssClass="btn btn-primary" Width="100%" />
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="btn btn-primary" OnClick="btnSalvar_Click" Width="100%" ValidationGroup="form"/>
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="btnBuscar_Click" Width="100%"/>
            </div>
        </div>
    </div>

</asp:Content>

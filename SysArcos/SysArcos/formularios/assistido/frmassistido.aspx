<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmassistido.aspx.cs" Inherits="ProjetoArcos.frmassistido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="areaformulario">
        <div class="container-fluid">
            <div class="row">
                <div class="entidade col">
                    Assistido
                </div>
            </div>
        
            <div class="row">
                <div class="acao col">
                    <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Label2" runat="server" Text="Nome:"></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:TextBox ID="txtNomeAssistido" class="form-control" runat="server" MaxLength="50"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Label10" runat="server" Text="Apelido: "></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:TextBox ID="txtApelido" class="form-control" runat="server" MaxLength="14"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Label3" runat="server" Text="CPF:"></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:TextBox ID="txtCPF" class="form-control" runat="server" MaxLength="50" Placeholder="999.999.999-99" onkeydown="mascara( this,CPF  );"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Label4" runat="server" Text="Data de Nascimento:"></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:TextBox ID="txtDataNascimento" class="form-control" runat="server" MaxLength="10" Placeholder="DD/MM/AAAA" TextMode="Date"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Label5" runat="server" Text="Logradouro:" ToolTip="  "></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:TextBox ID="txtLogradouro" class="form-control" runat="server" MaxLength="30"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Label12" runat="server" Text="Número:" ToolTip="  "></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:TextBox ID="txtNumero" class="form-control" runat="server" MaxLength="30"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Label13" runat="server" Text="Bairro:" ToolTip="  "></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:TextBox ID="txtBairro" class="form-control" runat="server" MaxLength="30"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Label6" runat="server" Text="CEP:"></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:TextBox ID="txtCEP" class="form-control" runat="server" MaxLength="9" Placeholder="99999-999" onkeydown="mascara( this,CEP  );"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Label7" runat="server" Text="Cidade:"></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:TextBox ID="txtCidade" class="form-control" runat="server" MaxLength="40"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Label8" runat="server" Text="Estado:"></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:DropDownList ID="drpEstado" class="form-control" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>AC</asp:ListItem>
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
                <div class="col-12 col-lg-10 row_fields">
                    Parentesco do Assistido:
                </div>
                <div class="col-12 col-lg-4">
                    <asp:TextBox ID="txtParentescoAssistido" class="form-control" runat="server" MaxLength="50"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    Assistido Responsável<br />
                </div>
                <div class="col-12 col-lg-4">
                    <asp:TextBox ID="txtIDResponsavelAssistido" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-12 col-lg-4 row_buttons">
                    <asp:Button ID="btnNovo" runat="server" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" Width="100%" Font-Size="x-large" />
                </div>
                <div class="col-12 col-lg-4 row_buttons">
                    <asp:Button ID="btn_cadastrar" class="btn btn-primary" runat="server" Text="Salvar" OnClick="btn_cadastrar_Click" Width="100%" Font-Size="x-large" />
                </div>
                <div class="col-12 col-lg-4 row_buttons">
                    <asp:Button ID="btn_buscar" class="btn btn-primary" runat="server" Text="Buscar" OnClick="btn_buscar_Click" Width="100%" Font-Size="x-large" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

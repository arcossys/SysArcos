<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmfornecedor.aspx.cs" Inherits="SysArcos.frmfornecedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="entidade row">
            Fornecedores
        </div>
        <div class="row">
            <div class="acao col-12">
                <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-8 row_fields">
                <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
            </div>

            <div class="col-12 col-lg-4 row_fields">
                <asp:Label ID="Label1" runat="server" Text="CNPJ"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Placeholder="999.999.999-99" MaxLength="18" onkeydown="mascara( this,CNPJ  );"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-8 row_fields">
                <asp:Label ID="Label3" runat="server" Text="Logradouro"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
            </div>

            <div class="col-12 col-lg-4 row_fields">
                <asp:Label ID="Label4" runat="server" Text="Número"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-8 row_fields">
                <asp:Label ID="Label5" runat="server" Text="Bairro"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" MaxLength="30"></asp:TextBox>
            </div>

            <div class="col-12 col-lg-4 row_fields">
                <asp:Label ID="Label6" runat="server" Text="CEP"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Placeholder="99999-999" MaxLength="9" onkeydown="mascara( this,CEP  );"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-12 col-lg-8 row_fields">
                <asp:Label ID="Label7" runat="server" Text="Cidade"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" MaxLength="40"></asp:TextBox>
            </div>

            <div class="col-12 col-lg-4 row_fields">
                <asp:Label ID="Label8" runat="server" Text="Estado"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="100%">
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
                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" MaxLength="255"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="btnNovo" runat="server" Text="Novo" CssClass="btn btn-primary" Width="100%" />
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="btn btn-primary" OnClick="btnSalvar_Click" Width="100%"/>
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="btnBuscar_Click" Width="100%"/>
            </div>
        </div>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmdoador.aspx.cs" Inherits="ProjetoArcos.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <div class="areaformulario">
        <div class="container-fluid">
            <div class="entidade">
                Doador
            </div>
    
            <div class="acao">
                <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
            </div>
    
            <div>
                <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>
            </div>

            <div class="row">
                <div class="col-12 col-lg-12 row_fields">
                    <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
                    <asp:TextBox ID="txt_nomedoador" class="form-control"  runat="server" Width="100%" MaxLength="50"></asp:TextBox>
                </div>
            </div> 
            
            <div  class="row">
                <div class="col-12 col-lg-8 row_fields">
                    <asp:Label ID="lblLogradouro" runat="server" Text="Logradouro"></asp:Label>
                    <asp:TextBox ID="txt_logradouro" class="form-control" runat="server" Width="100%" MaxLength="14"></asp:TextBox>
                </div>

                <div class="col-12 col-lg-4 row_fields">
                    <asp:Label ID="lblNumero" runat="server" Text="Número:"></asp:Label>
                    <asp:TextBox ID="txt_numero" class="form-control" runat="server" Width="100%" MaxLength="10"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-8 row_fields">
                    <asp:Label ID="lblBairro" runat="server" Text="Bairro:" ToolTip="  "></asp:Label>
                    <asp:TextBox ID="txt_bairro" class="form-control" runat="server" Width="100%" MaxLength="30"></asp:TextBox>
                </div>

                <div class="col-12 col-lg-4 row_fields">
                    <asp:Label ID="lblCEP" runat="server" Text="CEP:"></asp:Label>
                    <asp:TextBox ID="txt_CEP" class="form-control" runat="server" MaxLength="9" Width="100%"  Placeholder="99999-999"  onkeydown="mascara( this,CEP  );"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-8 row_fields">
                    <asp:Label ID="lblCidade" runat="server" Text="Cidade:"></asp:Label>
                    <asp:TextBox ID="txt_cidade" class="form-control" runat="server" MaxLength="40" Width="100%"></asp:TextBox>
                </div>

                <div class="col-12 col-lg-4 row_fields">
                    <asp:Label ID="lblEstado" runat="server" Text="Estado:"></asp:Label>
                    <asp:DropDownList ID="drp_estado" class="form-control" runat="server" Width="100%">
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
                <div class="col-12 col-lg-6 row_fields">
                    <asp:Label ID="lblDisponibilidade" runat="server" Text="Disponibilidade"></asp:Label>
                    <asp:TextBox ID="txt_disponibilidade"  class="form-control" runat="server" MaxLength="50" Width="100%"></asp:TextBox>
                </div>

                <div class="col-12 col-lg-6 row_fields">
                    <asp:Label ID="lblTipoDoacao" runat="server" Text="Tipo de doação"></asp:Label>
                    <asp:TextBox ID="txt_tipodoacao" runat="server" Width="100%" class="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-12 row_fields">
                    <asp:CheckBox ID="cb_ativo" runat="server" Text="Ativo" Checked="True" />
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-4 row_buttons">
                    <asp:Button ID="btn_novo" class="btn btn-primary" runat="server" Text="Novo" Font-Bold="True" Width="100%" OnClick="btn_novo_Click" />
                </div>
                <div class="col-12 col-lg-4 row_buttons">    
                    <asp:Button ID="btnCadastra" class="btn btn-primary" runat="server" OnClick="btnCadastra_Click" Text="Salvar" Font-Bold="True" Width="100%"/>
                </div>
                <div class="col-12 col-lg-4 row_buttons">
                    <asp:Button ID="btnConsulta" class="btn btn-primary" runat="server" Text="Buscar" Font-Bold="True" Width="100%" OnClick="btnConsulta_Click"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

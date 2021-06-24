<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmentidade.aspx.cs" Inherits="ProjetoArcos.cadentidade1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="areaformulario">
        <div class="container-fluid">
            <div class="row">
                <div class="entidade col-12">
                    Entidades
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
                <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>

            </div>

            <div class="row">
                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label2" runat="server" Text="Nome da Entidade:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNomeEntidade" ErrorMessage="Nome da Entatidade vazio" ForeColor="#FF3300" ValidationGroup="form" Font-Size="Medium">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtNomeEntidade" class="form-control" runat="server" Width="100%" MaxLength="50" Height="40px" ValidationGroup="form"></asp:TextBox>
                    </div>
                </div>
                <div class="cold-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label9" runat="server" Text="CNPJ: "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCNPJ" ErrorMessage="CNPJ está vazio" ForeColor="#FF3300" ValidationGroup="form" Font-Size="Medium">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCNPJ" ErrorMessage="Formato Incorreto" ForeColor="#FF3300" ValidationExpression="[0-9]{2}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}\-[0-9]{2}" ValidationGroup="form">Formato Incorreto</asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtCNPJ" onkeydown="mascara( this,CNPJ  );" Heigth="40px" class="form-control" runat="server" Width="100%" MaxLength="18" Height="40px" Placeholder="99.999.999/9999-99" ValidationGroup="form"></asp:TextBox>
                    </div>
                </div>
                <div class="cold-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label1" runat="server" Text="Telefone:"></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Telefone está vazio" ForeColor="#FF3300" ControlToValidate="txtTelefone" ValidationGroup="form" Font-Size="Medium">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefone" ErrorMessage="Formato Incorreto" ForeColor="#FF3300" ValidationExpression="^[1-9]{2} (?:[2-8]|9[1-9])[0-9]{3}[0-9]{4}$" ValidationGroup="form">Formato Incorreto</asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <asp:TextBox placeholder="99 99999999" class="form-control" ID="txtTelefone" runat="server" Height="40px" Width="100%" MaxLength="12" onkeydown="mascara( this,FONE  );"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label3" runat="server" Text="Logradouro:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLogradouro" ErrorMessage="Logradouro está vazio" ForeColor="#FF3300" ValidationGroup="form" Font-Size="Medium">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtLogradouro" class="form-control" runat="server" Width="100%" MaxLength="50" Height="40px" ValidationGroup="form"></asp:TextBox>
                    </div>
                </div>
                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label4" runat="server" Text="Número:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNumero" ErrorMessage="Número está vazio" ForeColor="#FF3300" ValidationGroup="form" Font-Size="Medium">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtNumero" class="form-control" runat="server" Width="100%" MaxLength="10" Height="40px" ValidationGroup="form"></asp:TextBox>
                    </div>
                </div>
                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label5" runat="server" Text="Bairro:" ToolTip="  "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBairro" ErrorMessage="Bairro está vazio" ForeColor="#FF3300" ValidationGroup="form" Font-Size="Medium">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtBairro" class="form-control" runat="server" Width="100%" MaxLength="30" Height="40px" ValidationGroup="form"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-2">
                    <div class="row_fields">
                        <asp:Label ID="Label6" runat="server" Text="CEP:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtCEP" ErrorMessage="CEP está vazio" ForeColor="#FF3300" ValidationGroup="form" Font-Size="Medium">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCEP" ErrorMessage="Formato Incorreto" ForeColor="#FF3300" ValidationExpression="[0-9]{5}\-[0-9]{3}" ValidationGroup="form"></asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtCEP" class="form-control" runat="server" MaxLength="9" Height="40px" Width="100%" Placeholder="99999-999" ValidationGroup="form" onkeydown="mascara( this,CEP  );"></asp:TextBox>
                    </div>
                </div>
                <div class="col-12 col-lg-5">
                    <div class="row_fields">
                        <asp:Label ID="Label7" runat="server" Text="Cidade:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCidade" ErrorMessage="Cidade está vazio" ForeColor="#FF3300" ValidationGroup="form" Font-Size="Medium">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtCidade" class="form-control" runat="server" MaxLength="40" Height="40px" Width="100%" ValidationGroup="form"></asp:TextBox>
                    </div>
                </div>
                <div class="col-12 col-lg-5">
                    <div class="row_fields">
                        <asp:Label ID="Label8" runat="server" Text="Estado:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="drpEstado" ErrorMessage="Estado está vazio" ForeColor="#FF3300" ValidationGroup="form" Font-Size="Medium">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:DropDownList ID="drpEstado" class="form-control" runat="server" Height="40px" Width="100%" ValidationGroup="form" CssClass="form-control">
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
            </div>

            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="row_fields">
                        <asp:Label ID="Labe20" runat="server" Text="Presidente:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPresidente" ErrorMessage="Presidente está vazio" ForeColor="#FF3300" ValidationGroup="form" Font-Size="Medium">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtPresidente" class="form-control" runat="server" MaxLength="50" Width="100%" Height="40px" ValidationGroup="form"></asp:TextBox>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="row_fields">
                        <asp:Label ID="Label11" runat="server" Text="Administrador:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtAdmnistrador" ErrorMessage="Administrador está vazio" ForeColor="#FF3300" ValidationGroup="form" Font-Size="Medium">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:DropDownList ID="txtAdmnistrador" runat="server" Height="40px" Width="100%" ValidationGroup="form" CssClass="form-control">
                        </asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 row_fields">
                    <asp:CheckBox ID="cbAtivo" runat="server" Text="Ativo" Height="40px" />
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-4 row_buttons">
                    <asp:Button ID="btnNovo" runat="server" CssClass="btn btn-primary" Font-Bold="True" OnClick="btnNovo_Click" Text="Novo" Width="100%"/>
                </div>
                <div class="col-12 col-lg-4 row_buttons">
                    <asp:Button ID="btnCadastra" class="btn btn-primary" runat="server" OnClick="btnCadastra_Click" Text="Salvar" Font-Bold="True" ValidationGroup="form" Width="100%"/>
                </div>
                <div class="col-12 col-lg-4 row_buttons">
                    <asp:Button ID="btnConsulta" class="btn btn-primary" runat="server" Text="Buscar" Font-Bold="True" OnClick="btnConsulta_Click" Width="100%"/>
                </div>

            </div>
        </div>
    </div>
</asp:Content>

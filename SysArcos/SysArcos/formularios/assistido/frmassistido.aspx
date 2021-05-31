<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmassistido.aspx.cs" Inherits="ProjetoArcos.frmassistido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="areaformulario">
        <div class="container-fluid">
            <div class="row">
                <div class="entidade">
                    Assistido
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
                <div class="col-12">
                    <div class="row_fields">
                        <asp:Label ID="lblEntidade" runat="server" Text="Entidade:"></asp:Label>
                    </div>
                    <div>
                        <asp:DropDownList ID="ddlEntidade" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="row_fields">
                        <asp:Label ID="Label2" runat="server" Text="Nome:"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtNomeAssistido" class="form-control" runat="server" MaxLength="50"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label10" runat="server" Text="Apelido: "></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtApelido" class="form-control" runat="server" MaxLength="14"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="row_fields">
                        <asp:Label ID="Label4" runat="server" Text="Data de Nascimento:"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtDataNascimento" ErrorMessage="Formato de Data Incorreto" ForeColor="Red" ValidationExpression="^(((0[1-9]|[12][0-9]|30)[-/]?(0[13-9]|1[012])|31[-/]?(0[13578]|1[02])|(0[1-9]|1[0-9]|2[0-8])[-/]?02)[-/]?[0-9]{4}|29[-/]?02[-/]?([0-9]{2}(([2468][048]|[02468][48])|[13579][26])|([13579][26]|[02468][048]|0[0-9]|1[0-6])00))$"></asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtDataNascimento" class="form-control" runat="server" MaxLength="10" Placeholder="DD/MM/AAAA" onkeydown="mascara(this,DATA);"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-6">
                    <div class="row_fields">
                        <asp:Label ID="lblEstadoCivil" runat="server" Text="Estado Civil:"></asp:Label>
                    </div>
                    <div>
                        <asp:DropDownList ID="ddlEstadoCivil" runat="server" class="form-control">
                        </asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label3" runat="server" Text="CPF:"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCPF" ErrorMessage="Formato de C.P.F. inválido" ForeColor="Red" ValidationExpression="[0-9]{3}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{2}"></asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtCPF" class="form-control" runat="server" MaxLength="14" Placeholder="999.999.999-99" onkeydown="mascara( this,CPF  );"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="lblRG" runat="server" Text="RG:"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtRG" class="form-control" runat="server" MaxLength="20"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="lblNIS" runat="server" Text="NIS:"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtNIS" class="form-control" runat="server" MaxLength="11"></asp:TextBox>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="lblProfissao" runat="server" Text="Profissão:"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtProfissao" class="form-control" runat="server" MaxLength="50"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="lblTelefone" runat="server" Text="Telefone:"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefone" ErrorMessage="Formato incorreto" ForeColor="Red" ValidationExpression="^[1-9]{2} (?:[2-8]|9[1-9])[0-9]{3}[0-9]{4}$"></asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtTelefone" placeholder="99 99999999" class="form-control" runat="server" MaxLength="13" onkeydown="mascara( this,FONE  );"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="lblEmail" runat="server" Text="E-mail:"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Formato de e-mail inválido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtEmail" class="form-control" runat="server" MaxLength="100"></asp:TextBox>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="row_fields">
                        <asp:Label ID="Label5" runat="server" Text="Logradouro:" ToolTip="  "></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtLogradouro" class="form-control" runat="server" MaxLength="30"></asp:TextBox>
                    </div>
                </div>
                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label12" runat="server" Text="Número:" ToolTip="  "></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtNumero" class="form-control" runat="server" MaxLength="30"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="row_fields">
                        <asp:Label ID="Label13" runat="server" Text="Bairro:" ToolTip="  "></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtBairro" class="form-control" runat="server" MaxLength="30"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label6" runat="server" Text="CEP:"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtCEP" class="form-control" runat="server" MaxLength="9" Placeholder="99999-999" onkeydown="mascara( this,CEP  );"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="row_fields">
                        <asp:Label ID="Label7" runat="server" Text="Cidade:"></asp:Label>
                    </div>
                    <div>
                        <asp:TextBox ID="txtCidade" class="form-control" runat="server" MaxLength="40"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label8" runat="server" Text="Estado:"></asp:Label>
                    </div>
                    <div>
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
            </div>


            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="row_fields">
                        Parentesco do Assistido:
                    </div>
                    <div>
                        <asp:TextBox ID="txtParentescoAssistido" class="form-control" runat="server" MaxLength="50"></asp:TextBox>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="row_fields">
                        Assistido Responsável
                    </div>
                    <div>
                        <asp:DropDownList ID="ddlResponsavelAssistido" runat="server" CssClass="form-control">
                        </asp:DropDownList>

                    </div>
                </div>
            </div>
            <br />

            <div class="row">
                <div class="col-12 col-lg-4 row_buttons">
                    <asp:Button ID="btnNovo" runat="server" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" Width="100%" Font-Size="X-Large" />
                </div>
                <div class="col-12 col-lg-4 row_buttons">
                    <asp:Button ID="btn_cadastrar" class="btn btn-primary" runat="server" Text="Salvar" OnClick="btn_cadastrar_Click" Width="100%" Font-Size="X-Large" />
                </div>
                <div class="col-12 col-lg-4 row_buttons">
                    <asp:Button ID="btn_buscar" class="btn btn-primary" runat="server" Text="Buscar" OnClick="btn_buscar_Click" Width="100%" Font-Size="X-Large" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

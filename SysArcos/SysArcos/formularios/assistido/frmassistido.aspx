<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmassistido.aspx.cs" Inherits="ProjetoArcos.frmassistido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/html">
        function abrirBusca() {
                $('#staticBackdrop').modal('show');
            }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="areaformulario">
        <div class="container-fluid">
            <div class="entidade row">
                Assistido
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
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="cadastro" />
                </div> 
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="row_fields">
                        <asp:Label ID="lblEntidade" runat="server" Text="Entidade:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlEntidade" ErrorMessage="Campo &quot;Entidade&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNomeAssistido" ErrorMessage="Campo &quot;Nome&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtNomeAssistido" class="form-control" runat="server" MaxLength="50"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label10" runat="server" Text="Apelido: "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtApelido" ErrorMessage="Campo &quot;Apelido&quot; é obrigatório." Font-Size="X-Large" ForeColor="#FF3300" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDataNascimento" ErrorMessage="Campo &quot;Data Nascimento&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtDataNascimento" ErrorMessage="Formato de Data Incorreto" ForeColor="Red" ValidationExpression="^(((0[1-9]|[12][0-9]|30)[-/]?(0[13-9]|1[012])|31[-/]?(0[13578]|1[02])|(0[1-9]|1[0-9]|2[0-8])[-/]?02)[-/]?[0-9]{4}|29[-/]?02[-/]?([0-9]{2}(([2468][048]|[02468][48])|[13579][26])|([13579][26]|[02468][048]|0[0-9]|1[0-6])00))$"></asp:RegularExpressionValidator>
                    &nbsp;</div>
                    <div>
                        <asp:TextBox ID="txtDataNascimento" class="form-control" runat="server" MaxLength="10" Placeholder="DD/MM/AAAA" onkeydown="mascara(this,DATA);"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-6">
                    <div class="row_fields">
                        <asp:Label ID="lblEstadoCivil" runat="server" Text="Estado Civil:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlEstadoCivil" ErrorMessage="Campo &quot;Estado Civil&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCPF" ErrorMessage="Campo &quot;C.P.F.&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCPF" ErrorMessage="Formato de C.P.F. inválido" ForeColor="Red" ValidationExpression="[0-9]{3}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{2}"></asp:RegularExpressionValidator>
                    &nbsp;</div>
                    <div>
                        <asp:TextBox ID="txtCPF" class="form-control" runat="server" MaxLength="14" Placeholder="999.999.999-99" onkeydown="mascara( this,CPF  );"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="lblRG" runat="server" Text="RG:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtRG" ErrorMessage="Campo &quot;RG&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtRG" class="form-control" runat="server" MaxLength="20"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="lblNIS" runat="server" Text="NIS:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtNIS" ErrorMessage="Campo &quot;NIS&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtProfissao" ErrorMessage="Campo &quot;Profissão&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtProfissao" class="form-control" runat="server" MaxLength="50"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="lblTelefone" runat="server" Text="Telefone:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtTelefone" ErrorMessage="Campo &quot;Telefone&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefone" ErrorMessage="Formato incorreto" ForeColor="Red" ValidationExpression="^[1-9]{2} (?:[2-8]|9[1-9])[0-9]{3}[0-9]{4}$"></asp:RegularExpressionValidator>
                    &nbsp;</div>
                    <div>
                        <asp:TextBox ID="txtTelefone" placeholder="99 99999999" class="form-control" runat="server" MaxLength="13" onkeydown="mascara( this,FONE  );"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="lblEmail" runat="server" Text="E-mail:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtEmail" ErrorMessage="Campo &quot;E-mail&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Formato de e-mail inválido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    &nbsp;</div>
                    <div>
                        <asp:TextBox ID="txtEmail" class="form-control" runat="server" MaxLength="100"></asp:TextBox>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="row_fields">
                        <asp:Label ID="Label5" runat="server" Text="Logradouro:" ToolTip="  "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtLogradouro" ErrorMessage="Campo &quot;Logradouro&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtLogradouro" class="form-control" runat="server" MaxLength="30"></asp:TextBox>
                    </div>
                </div>
                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label12" runat="server" Text="Número:" ToolTip="  "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtNumero" ErrorMessage="Campo &quot;Número&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtBairro" ErrorMessage="Campo &quot;Bairro&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtBairro" class="form-control" runat="server" MaxLength="30"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label6" runat="server" Text="CEP:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtCEP" ErrorMessage="Campo &quot;CEP&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtCidade" ErrorMessage="Campo &quot;Cidade&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtCidade" class="form-control" runat="server" MaxLength="40"></asp:TextBox>
                    </div>
                </div>

                <div class="col-12 col-lg-4">
                    <div class="row_fields">
                        <asp:Label ID="Label8" runat="server" Text="Estado:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="drpEstado" ErrorMessage="Campo &quot;Estado&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="ddlParentesco" ErrorMessage="Campo &quot;Parentesco Assistido&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:DropDownList ID="ddlParentesco" CssClass="form-control" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="row_fields">
                        Assistido Responsável
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtNomeResponsavelAssistido" ErrorMessage="Campo &quot;Assistido Responsável&quot; é obrigatório." Font-Size="X-Large" ForeColor="Red" ValidationGroup="cadastro">*</asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="txtIdResponsavelAssistido" runat="server" Visible="false"></asp:TextBox>
                        <div class="input-group mb-3">
                            <asp:TextBox CssClass="form-control" aria-describedby="button-addon2"
                                runat="server" ReadOnly="true" ID="txtNomeResponsavelAssistido"></asp:TextBox>
                            <button class="btn btn-primary" type="button" id="button-addon2"
                                data-toggle="modal" data-target="#staticBackdrop">
                                <<</button>
                        </div>
                    </div>
                </div>
            </div>
            <br />

            <div class="row">
                <div class="col-12 col-lg-4 row_buttons">
                    <asp:Button ID="btnNovo" runat="server" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" Width="100%" />
                </div>
                <div class="col-12 col-lg-4 row_buttons">
                    <asp:Button ID="btn_cadastrar" class="btn btn-primary" runat="server" Text="Salvar" OnClick="btn_cadastrar_Click" Width="100%" ValidationGroup="cadastro" />
                </div>
                <div class="col-12 col-lg-4 row_buttons">
                    <asp:Button ID="btn_buscar" class="btn btn-primary" runat="server" Text="Buscar" OnClick="btn_buscar_Click" Width="100%" />
                </div>
            </div>
        </div>
    </div>
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Buscar Assistido Responsável</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <asp:UpdatePanel ID="up" runat="server"
                        UpdateMode="Always">
                        <ContentTemplate>
                            <div class="row">
                                <div class="col-lg-9 col-12">
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="">Filtro</span>
                                        </div>
                                        <asp:TextBox ID="txtBusca" runat="server" placeholder="Pesquisa por nome..." CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-12">
                                    <asp:Button ID="btnBuscarAssistido" Text="buscar" OnClick="btnBuscarAssistido_Click" runat="server" CssClass="btn btn-primary"
                                        data-target="#staticBackdrop" Width="100%" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <br />
                                    <asp:GridView runat="server" ID="gridBuscar" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" ShowHeaderWhenEmpty="True" DataKeyNames="ID">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Nome" HeaderText="Nome" />
                                            <asp:CommandField ShowSelectButton="True" />
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="modal-footer">
                    <div>
                        <asp:Button ID="btnDefinidorTitular" Text="Definir como Titular" runat="server"
                            CssClass="btn btn-primary" OnClick="btnDefinidorTitular_Click" />
                    </div>
                    <div>
                        <asp:Button ID="btnSelecionarBuscar" Text="Selecionar Assistido" runat="server"
                            CssClass="btn btn-primary" OnClick="btnSelecionarBuscar_Click" />
                    </div>
                    <div>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

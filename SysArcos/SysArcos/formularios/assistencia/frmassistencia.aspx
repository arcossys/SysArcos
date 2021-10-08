<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmassistencia.aspx.cs" Inherits="ProjetoArcos.frmassistencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="entidade">
            Assistência
        </div>

        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="form" />
        </div>

        <div class="acao">
            <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
        </div>
        
        <div>
            <asp:TextBox ID="txtID" runat="server" Visible="false" />
        </div>

        <div class="row">
            <div class="col-lg-4 col-md-12 row_fields">
                <asp:Label ID="txtEntidade" runat="server" Text="Entidade"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlEntidade" ErrorMessage="Entidade não está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:DropDownList ID="ddlEntidade" runat="server" Width="100%" class="form-control" ValidationGroup="form">
                </asp:DropDownList>
            </div>

            <div class="col-lg-4 col-md-12 row_fields">
                <asp:Label ID="lblDataInicio" runat="server" Text="Data Inicial"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_inicial" ErrorMessage="Data Inicial está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txt_inicial" ErrorMessage="Formato de Data Incorreto" ForeColor="Red" ValidationExpression="^(((0[1-9]|[12][0-9]|30)[-/]?(0[13-9]|1[012])|31[-/]?(0[13578]|1[02])|(0[1-9]|1[0-9]|2[0-8])[-/]?02)[-/]?[0-9]{4}|29[-/]?02[-/]?([0-9]{2}(([2468][048]|[02468][48])|[13579][26])|([13579][26]|[02468][048]|0[0-9]|1[0-6])00))$"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txt_inicial" class="form-control" runat="server" MaxLength="10" Placeholder="DD/MM/AAAA" Width="100%" ValidationGroup="form" onkeydown="mascara(this,DATA);"></asp:TextBox>
            </div>

            <div class="col-lg-4 col-md-12 row_fields">
                <asp:Label ID="lblDataFim" runat="server" Text="Data Final"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_final" ErrorMessage="Data Final está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_final" ErrorMessage="Formato de Data Incorreto" ForeColor="Red" ValidationExpression="^(((0[1-9]|[12][0-9]|30)[-/]?(0[13-9]|1[012])|31[-/]?(0[13578]|1[02])|(0[1-9]|1[0-9]|2[0-8])[-/]?02)[-/]?[0-9]{4}|29[-/]?02[-/]?([0-9]{2}(([2468][048]|[02468][48])|[13579][26])|([13579][26]|[02468][048]|0[0-9]|1[0-6])00))$"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txt_final" class="form-control" runat="server" MaxLength="10" Placeholder="DD/MM/AAAA" Width="100%" ValidationGroup="form" onkeydown="mascara(this,DATA);"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6 col-md-12 row_fields">
                <asp:Label ID="txtAssistido" runat="server" Text="Assistido"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlAssistido" ErrorMessage="Assistido está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:DropDownList ID="ddlAssistido" runat="server" Width="100%" class="form-control" ValidationGroup="form">
                </asp:DropDownList>
            </div>

            <div class="col-lg-6 col-md-12 row_fields">
                <asp:Label ID="txtIDTipoAssistencia"  runat="server" Text="Tipo Assistência"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlTipoAssistencia" ErrorMessage="Tipo Assistência está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:DropDownList runat="server" class="form-control" ID="ddlTipoAssistencia">
                </asp:DropDownList>
            </div>
        </div>

        <div class="row">
            <div class="col-12 row_fields">
                <asp:Label ID="lbl_email" runat="server" Text="Observações"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_observacao" ErrorMessage="Observações está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txt_observacao" class="form-control" runat="server" MaxLength="50" Width="100%" TextMode="MultiLine" ValidationGroup="form"></asp:TextBox>
            </div>
        </div>

        <br />
        <div class="row">
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Width="100%" Text="Novo" OnClick="btnNovo_Click" />
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="Button2" class="btn btn-primary" runat="server" Width="100%" Text="Salvar" OnClick="btn_cadastrar_Click" ValidationGroup="form" />
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="btn_buscar" class="btn btn-primary" runat="server" Width="100%" Text="Buscar" OnClick="btn_buscar_Click" />
            </div>
        </div>
    </div>
</asp:Content>

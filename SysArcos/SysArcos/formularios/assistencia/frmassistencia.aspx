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
                <asp:TextBox ID="txt_inicial" class="form-control" runat="server" MaxLength="14" Placeholder="DD/MM/AAAA" Width="100%" TextMode="Date" ValidationGroup="form"></asp:TextBox>
            </div>

            <div class="col-lg-4 col-md-12 row_fields">
                <asp:Label ID="lblDataFim" runat="server" Text="Data Final"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_final" ErrorMessage="Data Final está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txt_final" class="form-control" runat="server" MaxLength="14" Placeholder="DD/MM/AAAA" Width="100%" TextMode="Date" ValidationGroup="form"></asp:TextBox>
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
                <asp:Label ID="lbl_cpf" runat="server" Text="Descrição"></asp:Label>
                :
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_descricao" ErrorMessage="Descrição está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txt_descricao" runat="server" MaxLength="14" Width="100%" class="form-control" ValidationGroup="form"></asp:TextBox>
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

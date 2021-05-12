<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmassistencia.aspx.cs" Inherits="ProjetoArcos.frmassistencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="entidade">
            Assistência
        </div>
        <div class="acao">
            <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-12">
                <asp:Label ID="Label3" runat="server" Text="Data Inicial"></asp:Label>
                <asp:TextBox ID="txt_inicial" class="form-control" runat="server" MaxLength="14" Placeholder="DD/MM/AAAA" Width="100%" TextMode="Date"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-12">
                <asp:Label ID="Label2" runat="server" Text="Data Final"></asp:Label>
                <asp:TextBox ID="txt_final" class="form-control" runat="server" MaxLength="14" Placeholder="DD/MM/AAAA" Width="100%" TextMode="Date"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-12">
                <asp:Label ID="lbl_cpf" runat="server" Text="Descrição"></asp:Label>
                <asp:TextBox ID="txt_descricao" runat="server" MaxLength="14" Width="100%" class="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-12">
                <asp:Label ID="txtEntidade" runat="server" Text="Entidade"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlEntidade" runat="server" Width="100%" class="form-control">
                </asp:DropDownList>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-12">
                <asp:Label ID="txtAssistido" runat="server" Text="Assistido"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlAssistido" runat="server" Width="100%" class="form-control">
                </asp:DropDownList>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-12">
                <asp:Label ID="lbl_email" runat="server" Text="Observações"></asp:Label>
                <asp:TextBox ID="txt_observacao" class="form-control" runat="server" MaxLength="50" Width="100%"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Width="100%" Font-Size="X-Large" Text="Novo" OnClick="btnNovo_Click" />
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="Button2" class="btn btn-primary" runat="server" Width="100%" Font-Size="X-Large" Text="Salvar" OnClick="btn_cadastrar_Click" />
            </div>
            <div class="col-12 col-lg-4 row_buttons">
                <asp:Button ID="btn_buscar" class="btn btn-primary" runat="server" Width="100%" Font-Size="X-Large" Text="Buscar" OnClick="btn_buscar_Click" />
            </div>
        </div>
    </div>
</asp:Content>

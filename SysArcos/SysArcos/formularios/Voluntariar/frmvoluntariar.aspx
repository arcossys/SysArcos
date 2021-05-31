<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmvoluntariar.aspx.cs" Inherits="SysArcos.formularios.Voluntariar.frmvoluntariar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="areaformulario">
        <div class="container-fluid">
            <div class="row">
                <div class="entidade col">
                    Voluntariar
                </div>
            </div>

            <div class="row">
                <div class="acao col">
                    <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="lblID" runat="server"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Lbl_vdatainicial" runat="server" Text="Data Inicial"></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:TextBox ID="Txt_vdatainicial" class="form-control" runat="server" MaxLength="14" Placeholder="DD/MM/AAAA" TextMode="Date"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Label2" runat="server" Text="Data Final"></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:TextBox ID="Txt_vdatafinal" class="form-control" runat="server" MaxLength="14" Placeholder="DD/MM/AAAA" TextMode="Date"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Lbl_voluntario" runat="server" Text="Voluntario"></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:DropDownList ID="Ddl_voluntario" runat="server" class="form-control">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Lbl_ventidade" runat="server" Text="Voluntariado"></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:DropDownList ID="Ddl_vvoluntariado" runat="server" class="form-control">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-10 row_fields">
                    <asp:Label ID="Lbl_vobservacao" runat="server" Text="Observação"></asp:Label>
                </div>
                <div class="col-12 col-lg-4">
                    <asp:TextBox ID="Txt_vobservacao" class="form-control" runat="server" MaxLength="50"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-4 row_buttons">
                    &nbsp;<asp:Button ID="Btn_Novo" runat="server" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" Width="100%" Font-Size="x-large" />
                </div>
                <div class="col-12 col-lg-4 row_buttons">
                    &nbsp;<asp:Button ID="Btn_Salvar" class="btn btn-primary" runat="server" Text="Salvar" OnClick="Btn_Salvar_Click1" Width="100%" Font-Size="x-large" />
                </div>
                <div class="col-12 col-lg-4 row_buttons">
                    &nbsp;<asp:Button ID="Btn_Buscar" class="btn btn-primary" runat="server" Text="Buscar" OnClick="btn_buscar_Click" Width="100%" Font-Size="x-large" />
                </div>
                <br />
            </div>
        </div>
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmvoluntariar.aspx.cs" Inherits="SysArcos.formularios.Voluntariar.frmvoluntariar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Voluntariar</p>
    <asp:Label ID="LblAcao" runat="server" Text="Novo"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Lbl_vdatainicial" runat="server" Text="Data Inicial"></asp:Label>
    <asp:TextBox ID="Txt_vdatainicial" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Lbl_vdatafinal" runat="server" Text="Data Final"></asp:Label>
    <asp:TextBox ID="Txt_vdatafinal" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Lbl_vdescricao" runat="server" Text="Descrição"></asp:Label>
    <asp:TextBox ID="Txt_vdescricao" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Lbl_voluntario" runat="server" Text="Voluntario"></asp:Label>
    <asp:DropDownList ID="Ddl_voluntario" runat="server">
    </asp:DropDownList>
    <br />
    <asp:Label ID="Lbl_ventidade" runat="server" Text="Entidade"></asp:Label>
    <asp:DropDownList ID="Ddl_ventidade" runat="server">
    </asp:DropDownList>
    <br />
    <asp:Label ID="Lbl_vobservacao" runat="server" Text="Observação"></asp:Label>
    <asp:TextBox ID="Txt_vobservacao" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Btn_Novo" runat="server" Text="Novo" />
    <asp:Button ID="Btn_Salvar" runat="server" Text="Salvar" />
    <asp:Button ID="Btn_Buscar" runat="server" Text="Buscar" />
</asp:Content>


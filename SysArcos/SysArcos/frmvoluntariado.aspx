<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmvoluntariado.aspx.cs" Inherits="ProjetoArcos.frmvoluntariado1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Voluntariado
    </div>
    <div class="acao" >
        <asp:Label ID="lbl_acao" runat="server" Text="NOVO"></asp:Label>
    </div>
    <p>
        <asp:Label ID="lblEntidade" runat="server" Text="Entidade"></asp:Label>
&nbsp;<asp:DropDownList ID="Dplist" class="form-control" MaxLength="50" Width="300px" runat="server">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="lblDataini" runat="server" Text="Data Inicial"></asp:Label>
&nbsp;<asp:TextBox ID="txtDataini" class="form-control" runat="server" MaxLength="50" Width="300px"></asp:TextBox>
    </p>
    <p>
        &nbsp;<asp:Label ID="lblDataFinal" runat="server" Text="Data Final"></asp:Label>
&nbsp;<asp:TextBox ID="txtDatafinal" class="form-control" runat="server" MaxLength="50" Width="300px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblDescricao" runat="server" Text="Descrição"></asp:Label>
&nbsp;<asp:TextBox ID="txtDesc" class="form-control" runat="server" MaxLength="50" Width="300px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblObser" runat="server" Text="Observação"></asp:Label>
&nbsp;<asp:TextBox ID="txtObser" class="form-control" runat="server" MaxLength="50" Width="300px"></asp:TextBox>
    </p>

    <p>
        <asp:Button ID="btnNovo" runat="server" class="btn btn-primary" Text="Novo" />
        <asp:Button ID="btnSalvar" runat="server" class="btn btn-primary" OnClick="btnSalvar_Click" Text="Salvar" />
        <asp:Button ID="btnBusca" runat="server" class="btn btn-primary" OnClick="btnBusca_Click" Text="Busca" />
    </p>

</asp:Content>

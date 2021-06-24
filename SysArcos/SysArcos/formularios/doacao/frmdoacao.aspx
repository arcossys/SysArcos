<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmdoacao.aspx.cs" Inherits="SysArcos.formularios.doacao.frmdoacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Doação
    </div>    

    <div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="form" />
    </div>

    <div class="row">
        <div class="col-12 col-lg-6 row_fields">
            <asp:Label ID="lblEntidade" runat="server" Text="Entidade"></asp:Label>
            :
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlEntidade" ErrorMessage="Entidade está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
&nbsp;<asp:DropDownList ID="ddlEntidade" runat="server" CssClass="form-control" Width="100%" ValidationGroup="form">
            </asp:DropDownList>
        </div>   
        
        <div class="col-12 col-lg-6 row_fields">
            <asp:Label ID="lblDoador" runat="server" Text="Doador"></asp:Label>
            :
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlDoador" ErrorMessage="Doador está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            <asp:DropDownList ID="ddlDoador" runat="server" CssClass="form-control" Width="100%" ValidationGroup="form">
            </asp:DropDownList>
        </div>
    </div>

    <div class="row">
        <div class="col-12 col-lg-6 row_fields">
            <asp:Label ID="lblData" runat="server" Text="Data"></asp:Label>
            :
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtData" ErrorMessage="Data está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtData" runat="server" CssClass="form-control" TextMode="Date" Width="100%" ValidationGroup="form"></asp:TextBox>
        </div>

        <div class="col-12 col-lg-6 row_fields">
            <asp:Label ID="lblDoacao" runat="server" Text="Doação"></asp:Label>
            :
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDoacao" ErrorMessage="Doação está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
            <asp:TextBox ID="txtDoacao" runat="server" CssClass="form-control" Width="100%" ValidationGroup="form"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-12 col-lg-12 row_fields">
            <asp:Label ID="lblObs" runat="server" Text="Observações"></asp:Label>
            :
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtObs" ErrorMessage="Observação está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtObs" runat="server" CssClass="form-control" Width="100%" TextMode="MultiLine" ValidationGroup="form"></asp:TextBox>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Width="100%" Text="Novo" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Width="100%" Text="Salvar" OnClick="Button2_Click" ValidationGroup="form" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary" Width="100%" Text="Buscar" OnClick="Button3_Click" />
        </div>
    </div>
</asp:Content>

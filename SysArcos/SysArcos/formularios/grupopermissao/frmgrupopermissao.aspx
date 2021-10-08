<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmgrupopermissao.aspx.cs" Inherits="SysArcos.formularios.usuario.frmgrupopermissao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Grupo de Permissões
    </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="form" />
    <div>
        
    </div>

    <div class="acao">
        <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
    </div>

    <div>
        <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>
    </div>

    <div class="form-group" >
        <div class="row">
            <div class="col-12 col-lg-4">
                <asp:Label ID="lbl_user" runat="server" Text="Descrição:"></asp:Label>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_descricao" ErrorMessage="Descrição está vazio" Font-Size="Medium" ForeColor="Red" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txt_descricao" class="form-control" runat="server" Width="100%" MaxLength="50" Height="40px" ValidationGroup="form"></asp:TextBox>       
             </div>
        </div>
    </div>

    <div>
        <asp:TreeView ID="TreePermissoes" runat="server" ExpandDepth="0" ImageSet="Contacts" NodeIndent="10">
            <HoverNodeStyle Font-Underline="False" />
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="True" ForeColor="#5555DD" />
            <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    </div>
    <br />

    <div class="row">
          <div class="col-12 col-lg-4 row_buttons"> 
            <asp:Button ID="btnNovo" runat="server" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" Width="100%"/>
          </div>
          
          <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btn_cadastrar"  class="btn btn-primary" runat="server" Text="Salvar" OnClick="btn_cadastrar_Click" Width="100%" ValidationGroup="form"/>
          </div>

          <div class="col-12 col-lg-4 row_buttons">
            <asp:Button ID="btn_buscar" class="btn btn-primary" runat="server" Text="Buscar" OnClick="btn_buscar_Click" Width="100%"/>
          </div>
                     
    </div>
</asp:Content>

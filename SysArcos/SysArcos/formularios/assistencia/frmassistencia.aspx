<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmassistencia.aspx.cs" Inherits="ProjetoArcos.frmassistencia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Assistência
    </div>

    <div class="acao">
        <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
    </div>      
    <div>
       <asp:Label ID="Label3" runat="server" Text="Data Inicial"></asp:Label>
       <asp:TextBox ID="txt_inicial" class="form-control" runat="server" MaxLength="14" Placeholder="DD/MM/AAAA" Width="300px" TextMode="Date"></asp:TextBox>
    </div>         
    <div  >                   
       <asp:Label ID="Label2" runat="server" Text="Data Final"></asp:Label>
       <asp:TextBox ID="txt_final" class="form-control" runat="server" MaxLength="14" Placeholder="DD/MM/AAAA" Width="300px" TextMode="Date"></asp:TextBox>
    </div>
    <div>                   
        <asp:Label ID="lbl_cpf" runat="server" Text="Descrição"></asp:Label>
        <asp:TextBox ID="txt_descricao" runat="server" MaxLength="14" Width="300px" class="form-control"></asp:TextBox>
    </div>
    <div>

        <asp:Label ID="txtEntidade" runat="server" Text="Entidade"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlEntidade" runat="server"  Width="300px" class="form-control">
        </asp:DropDownList>

    </div>
    <div>

        <asp:Label ID="txtAssistido" runat="server" Text="Assistido"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlAssistido" runat="server"  Width="300px" class="form-control">
        </asp:DropDownList>

    </div>
    <div >                   
       <asp:Label ID="lbl_email" runat="server" Text="Observações"></asp:Label>
       <asp:TextBox ID="txt_observacao" class="form-control" runat="server" MaxLength="50" Width="300px"></asp:TextBox>
    </div>
    <br />
    <div>
                     &nbsp;<asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" />
&nbsp;<asp:Button ID="Button2"  class="btn btn-primary" runat="server" Text="Salvar" OnClick="btn_cadastrar_Click" />
                     &nbsp;<asp:Button ID="btn_buscar" class="btn btn-primary" runat="server" Text="Buscar" OnClick="btn_buscar_Click" />
                 </div> 
</asp:Content>

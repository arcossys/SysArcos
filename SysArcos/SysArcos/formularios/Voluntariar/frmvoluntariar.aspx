<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmvoluntariar.aspx.cs" Inherits="SysArcos.formularios.Voluntariar.frmvoluntariar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Voluntariar
    </div>
    <div class="acao"><asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label></div>
    <div>

        <asp:Label ID="lblID" runat="server"></asp:Label>

    </div>
    <div>
        <asp:Label ID="Lbl_vdatainicial" runat="server" Text="Data Inicial"></asp:Label>
    <asp:TextBox ID="Txt_vdatainicial" class="form-control" runat="server" MaxLength="14" Placeholder="DD/MM/AAAA" Width="300px" TextMode="Date"></asp:TextBox>
    </div>
   <div>
       <asp:Label ID="Label2" runat="server" Text="Data Final"></asp:Label>
    <asp:TextBox ID="Txt_vdatafinal" class="form-control" runat="server" MaxLength="14" Placeholder="DD/MM/AAAA" Width="300px" TextMode="Date"></asp:TextBox>
   </div>
    <div>
        <asp:Label ID="Lbl_voluntario" runat="server" Text="Voluntario"></asp:Label>
         <br />
    <asp:DropDownList ID="Ddl_voluntario" runat="server" class="form-control" Width="300px">
    </asp:DropDownList>
    </div>
    <div><asp:Label ID="Lbl_ventidade" runat="server" Text="Voluntariado"></asp:Label>
        <br />
    <asp:DropDownList ID="Ddl_vvoluntariado" runat="server" class="form-control" Width="300px">
    </asp:DropDownList>
    </div>
    
    <div> <asp:Label ID="Lbl_vobservacao" runat="server" Text="Observação"></asp:Label>
    <asp:TextBox ID="Txt_vobservacao" class="form-control" runat="server" MaxLength="50" Width="300px"></asp:TextBox>

    </div>
   
    <br />
    <div>   
        &nbsp;<asp:Button ID="Btn_Novo" runat="server" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" />
        &nbsp;<asp:Button ID="Btn_Salvar" class="btn btn-primary"  runat="server" Text="Salvar" OnClick="Btn_Salvar_Click1" />
    &nbsp;<asp:Button ID="Btn_Buscar" class="btn btn-primary" runat="server" Text="Buscar" OnClick="btn_buscar_Click"/>

    </div>
 
</asp:Content>


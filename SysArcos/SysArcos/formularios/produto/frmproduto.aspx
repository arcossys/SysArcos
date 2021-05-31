<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmproduto.aspx.cs" Inherits="ProjetoArcos.frmproduto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Produtos
    </div>
    

    <div class="acao" >
        <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
    </div>        

    
    <div>
        <asp:Label ID="lblID" runat="server"></asp:Label>
        </div>
              <div class="form-group" >
                 <asp:Label ID="lbl_user" runat="server" Text="Descrição:"></asp:Label>
                 <asp:TextBox ID="txt_descricao" class="form-control" runat="server" MaxLength="30" Width="300px"></asp:TextBox>       
              </div>

            <div class="form-group" >
                 <asp:Label ID="Label1" runat="server" Text="Especificação:"></asp:Label>
                 <asp:TextBox ID="txt_especificacao" class="form-control" runat="server" MaxLength="30" Width="300px"></asp:TextBox>       
              </div>

              <div class="form-group" >
                 <asp:Label ID="lbl_unidade" runat="server" Text="Unidade:"></asp:Label>
                 <asp:TextBox ID="txt_unidade" class="form-control" runat="server" MaxLength="30" Width="300px"></asp:TextBox>       
              </div>

      <asp:Label ID="Label2" runat="server" Text="Categoria"></asp:Label>

    <br />

             <div>

                 <asp:DropDownList ID="dlCategoria" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control" Width="300px">
                     <asp:ListItem Text=""></asp:ListItem>
                 </asp:DropDownList>

             </div>
    
    <br />
               
                 <div>
                     &nbsp;<asp:Button ID="btnNovo" runat="server" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" />
&nbsp;<asp:Button ID="btn_cadastrar"  class="btn btn-primary" runat="server" Text="Salvar" OnClick="btn_cadastrar_Click" />
                     &nbsp;<asp:Button ID="btn_buscar" class="btn btn-primary" runat="server" Text="Buscar" OnClick="btn_buscar_Click" />
                     
                 </div>                

</asp:Content>

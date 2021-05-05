<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmgrupopermissao.aspx.cs" Inherits="SysArcos.formularios.usuario.frmgrupopermissao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Grupo de Permissões
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
        <asp:TextBox ID="txt_descricao" class="form-control" runat="server" Width="100%" MaxLength="50" Height="40px"></asp:TextBox>       
    </div>
</div>
        </div>

    <div>
        <asp:TreeView ID="tvPermissao" runat="server" ExpandDepth="0" ImageSet="Contacts" NodeIndent="10">
            <HoverNodeStyle Font-Underline="False" />

            <Nodes>

                <asp:TreeNode Text="Entidade" Value="Entidade" SelectAction="None">
                    <asp:TreeNode ShowCheckBox="True" Text="Entidade" Value="Entidade" SelectAction="None"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Voluntário" Value="Voluntario" SelectAction="None">
                    <asp:TreeNode ShowCheckBox="True" Text="Voluntários" Value="Voluntarios" SelectAction="None"></asp:TreeNode>
                    <asp:TreeNode ShowCheckBox="True" Text="Voluntariar" Value="Voluntariar" SelectAction="None"></asp:TreeNode>
                    <asp:TreeNode ShowCheckBox="True" Text="Voluntariado" Value="Voluntariado" SelectAction="None"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Usuário" Value="Usuario" SelectAction="None">
                    <asp:TreeNode Text="Usuários" Value="Usuarios" SelectAction="None" ShowCheckBox="True"></asp:TreeNode>
                    <asp:TreeNode ShowCheckBox="True" Text="Grupo Permissão" Value="GrupoPermissao" SelectAction="None"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Evento" Value="Evento" SelectAction="None">
                    <asp:TreeNode ShowCheckBox="True" Text="Eventos" Value="Eventos" SelectAction="None"></asp:TreeNode>
                    <asp:TreeNode ShowCheckBox="True" Text="Tipos Evento" Value="TiposEvento" SelectAction="None"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Recurso" Value="Recurso" SelectAction="None">
                    <asp:TreeNode ShowCheckBox="True" Text="Recursos" Value="Recursos" SelectAction="None"></asp:TreeNode>
                    <asp:TreeNode ShowCheckBox="True" Text="Tipos Recurso" Value="TiposRecurso" SelectAction="None"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Fornecedor" Value="Fornecedor" SelectAction="None">
                    <asp:TreeNode ShowCheckBox="True" Text="Fornecedores" Value="Fornecedores" SelectAction="None"></asp:TreeNode>
                    <asp:TreeNode ShowCheckBox="True" Text="Fornecimento" Value="Fornecimento" SelectAction="None"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Estoque" Value="Estoque" SelectAction="None">
                    <asp:TreeNode ShowCheckBox="True" Text="Produtos" Value="Produtos" SelectAction="None"></asp:TreeNode>
                    <asp:TreeNode ShowCheckBox="True" Text="Tipos Produto" Value="TiposProduto" SelectAction="None"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Doação" Value="Doacao" SelectAction="None">
                    <asp:TreeNode ShowCheckBox="True" Text="Doações" Value="Doacoes" SelectAction="None"></asp:TreeNode>
                    <asp:TreeNode ShowCheckBox="True" Text="Doadores" Value="Doadores" SelectAction="None"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="Assistência" Value="Assistencia" SelectAction="None">
                    <asp:TreeNode ShowCheckBox="True" Text="Assistências" Value="Assistencias" SelectAction="None"></asp:TreeNode>
                    <asp:TreeNode ShowCheckBox="True" Text="Assistidos" Value="Assistidos" SelectAction="None"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="True" ForeColor="#5555DD" />
            <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    </div>
    <br />

    <div class="row">
          <div class="col-12 col-lg-4 row_buttons"> 
          <asp:Button ID="btnNovo" runat="server" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" Width="100%" Font-Size="X-Large"/>
          </div>
          
          <div class="col-12 col-lg-4 row_buttons">
          <asp:Button ID="btn_cadastrar"  class="btn btn-primary" runat="server" Text="Salvar" OnClick="btn_cadastrar_Click" Width="100%" Font-Size="X-Large"/>
          </div>

          <div class="col-12 col-lg-4 row_buttons">
          <asp:Button ID="btn_buscar" class="btn btn-primary" runat="server" Text="Buscar" OnClick="btn_buscar_Click" Width="100%" Font-Size="X-Large"/>
          </div>
                     
    </div>
</asp:Content>

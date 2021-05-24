<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmusuario.aspx.cs" Inherits="ProjetoArcos.formusuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                <div class="entidade col-12">
                    Usuarios
                </div>
    </div>
    <div class="row">
                <div class="acao col-12">
                    <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
                </div>
    </div>        
    <div class="form-group" >                               
              <div class="row">
                  <div class="col-12 col-lg-4">
                    <asp:Label ID="lbl_user" runat="server" Text="Usuário:"></asp:Label>
                    <asp:TextBox ID="txt_user" class="form-control" runat="server" Width="100%" MaxLength="50" Height="40px" ValidationGroup="form"></asp:TextBox>
                  </div>
              </div>
        </div>

            <div class="form-group" >
             <div class="row">
            <div class="col-12 col-lg-4">
              <asp:Label ID="lbl_senha" runat="server" Text="Senha:"></asp:Label>
              <asp:TextBox ID="txt_senhaUsuario"  type="password" class="form-control" runat="server" MaxLength="8" Placeholder="max: 8 dig" Width="100%" Height="40px"></asp:TextBox>     

            </div>
                  </div>
             </div>

             <div class="form-group" >  
             <div class="row">
             <div class="col-12 col-lg-4">
                 <asp:Label ID="lbl_nomeUsuario" runat="server" Text="Nome:"></asp:Label>
                 <asp:TextBox ID="txt_nomeUsuario" class="form-control" runat="server" Width="100%" MaxLength="50" Height="40px" ValidationGroup="form"></asp:TextBox>                
             </div>
                     </div>
              </div>


               <div  class="form-group" > 
                   <div class="row">
                <div class="col-12 col-lg-4">
                   <asp:Label ID="lbl_cpf" runat="server" Text="CPF:"></asp:Label>
                   &nbsp;<asp:RegularExpressionValidator ID="revCPF" runat="server" ControlToValidate="txt_cpf" ErrorMessage="Formato de CPF inválido" ForeColor="Red" ValidationExpression="[0-9]{3}\.?[0-9]{3}\.?[0-9]{3}\-?[0-9]{2}"></asp:RegularExpressionValidator>
                   <asp:TextBox ID="txt_cpf" class="form-control" runat="server" MaxLength="50" Placeholder="999.999.999-99" Width="100%"  onkeydown="mascara( this,CPF  );"></asp:TextBox> 

                </div>
                     </div>
                </div>

                <div  class="form-group" >    
                     <div class="row">
                <div class="col-12 col-lg-4">
                   <asp:Label ID="lbl_email" runat="server" Text="E-mail"></asp:Label>
                   &nbsp;<asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txt_email" ErrorMessage="Formato de e-mail inválido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> &nbsp;<asp:TextBox ID="txt_email" class="form-control" runat="server" MaxLength="50" Width="100%"></asp:TextBox>
                 </div>
                      </div>
                 </div>


                 <div class="form-group">
                     <div class="row">
                     <div class="col-12 col-lg-4">
                     <asp:Label ID="lbl_permissao" runat="server" Text="Permissão"></asp:Label>
                     <asp:DropDownList ID="ddlPermissao" runat="server" class="form-control" WMaxLength="50" Width="100%">
                     </asp:DropDownList>
                 </div>
                </div>
                         </div>

                    <asp:CheckBox ID="ckAdministrador" runat="server" Text="Administrador" />

                
                 <div>
                    <asp:CheckBox ID="CB_ativo" type="checkbox" runat="server" BorderColor="Black" Checked="True" Text="Ativo" />                
                 </div>
                 <div>
                    <asp:CheckBox ID="CB_AlteraProxLogin" type="checkbox" runat="server" BorderColor="Black" Checked="False" Text="Alterar Senha Próximo Login" />                
                 </div>
                   
                 <div class="row">
                     <div class="col-12 col-lg-4 row_buttons"> 
                   <asp:Button ID="btnNovo" runat="server" class="btn btn-primary" Width="100%" Font-Size="X-Large" Text="Novo" OnClick="btnNovo_Click" />
                 </div>

                    <div class="col-12 col-lg-4 row_buttons">
                     <asp:Button ID="btn_cadastrar"  class="btn btn-primary" runat="server" Width="100%" Font-Size="X-Large" Text="Salvar" OnClick="btn_cadastrar_Click" />
                    </div>

                    <div class="col-12 col-lg-4 row_buttons">
                         <asp:Button ID="btn_buscar" class="btn btn-primary" runat="server" Width="100%" Font-Size="X-Large" Text="Buscar" OnClick="btn_buscar_Click" />
                    </div>

                  </div>                 

</asp:Content>

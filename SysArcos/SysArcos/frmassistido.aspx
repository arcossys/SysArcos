<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmassistido.aspx.cs" Inherits="ProjetoArcos.frmassistido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Assistido
    </div>
    <div class="acao" >
        <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
    </div> 

            <div  >
               <asp:Label ID="Label2" runat="server" Text="Nome:"></asp:Label>
               <asp:TextBox ID="txtNomeAssistido" class="form-control"  runat="server" Width="300px" MaxLength="50" Height="30px"></asp:TextBox>
            </div>


            <div  >
               <asp:Label ID="Label10" runat="server" Text="Apelido: "></asp:Label>
               <asp:TextBox ID="txtApelido" class="form-control" runat="server" Width="195px" MaxLength="14" Height="30px"></asp:TextBox>
            </div>


            <div  >
               <asp:Label ID="Label3" runat="server" Text="CPF:"></asp:Label>
               <asp:TextBox ID="txtCPF"  class="form-control" runat="server" Width="300px" MaxLength="50" Height="30px"></asp:TextBox>
            </div>

            <div   >
               <asp:Label ID="Label4" runat="server" Text="Data de Nascimento:"></asp:Label>
               <asp:TextBox ID="txtDataNascimento" class="form-control" runat="server" Width="140px" MaxLength="10" Height="30px"></asp:TextBox>         
            </div>

            <div  >
               <asp:Label ID="Label5" runat="server" Text="Logradouro:" ToolTip="  "></asp:Label>
               <asp:TextBox ID="txtLogradouro" class="form-control" runat="server" Width="300px" MaxLength="30" Height="30px"></asp:TextBox>
            </div>

            <div  >
               <asp:Label ID="Label12" runat="server" Text="Número:" ToolTip="  "></asp:Label>
               <asp:TextBox ID="txtNumero" class="form-control" runat="server" Width="300px" MaxLength="30" Height="30px"></asp:TextBox>
               <asp:Label ID="Label13" runat="server" Text="Bairro:" ToolTip="  "></asp:Label>
               <asp:TextBox ID="txtBairro" class="form-control" runat="server" Width="300px" MaxLength="30" Height="30px"></asp:TextBox>
               <asp:Label ID="Label6" runat="server" Text="CEP:"></asp:Label>
               <asp:TextBox ID="txtCEP" class="form-control" runat="server" MaxLength="9" Height="30px" Width="300px"></asp:TextBox>
            </div>

             <div   >
               <asp:Label ID="Label7" runat="server" Text="Cidade:"></asp:Label>
               <asp:TextBox ID="txtCidade" class="form-control" runat="server" MaxLength="40" Height="30px" Width="300px"></asp:TextBox>
             </div>

              <div   >
                <asp:Label ID="Label8" runat="server" Text="Estado:"></asp:Label>
                <asp:DropDownList ID="drpEstado" class="form-control" runat="server" Height="30px" Width="300px">
                   <asp:ListItem></asp:ListItem>
                   <asp:ListItem>AC</asp:ListItem>
                   <asp:ListItem>AL</asp:ListItem>
                   <asp:ListItem>AP</asp:ListItem>
                   <asp:ListItem>AM</asp:ListItem>
                   <asp:ListItem>BA</asp:ListItem>
                   <asp:ListItem>CE</asp:ListItem>
                   <asp:ListItem>DF</asp:ListItem>
                   <asp:ListItem>ES</asp:ListItem>
                   <asp:ListItem>GO</asp:ListItem>
                   <asp:ListItem>MA</asp:ListItem>
                   <asp:ListItem>MT</asp:ListItem>
                   <asp:ListItem>MS</asp:ListItem>
                   <asp:ListItem>MG</asp:ListItem>
                   <asp:ListItem>PA</asp:ListItem>
                   <asp:ListItem>PB</asp:ListItem>
                   <asp:ListItem>PR</asp:ListItem>
                   <asp:ListItem>PE</asp:ListItem>
                   <asp:ListItem>PI</asp:ListItem>
                   <asp:ListItem>RJ</asp:ListItem>
                   <asp:ListItem>RN</asp:ListItem>
                   <asp:ListItem>RS</asp:ListItem>
                   <asp:ListItem>RO</asp:ListItem>
                   <asp:ListItem>RR</asp:ListItem>
                   <asp:ListItem>SC</asp:ListItem>
                   <asp:ListItem>SP</asp:ListItem>
                   <asp:ListItem>SE</asp:ListItem>
                   <asp:ListItem>TO</asp:ListItem>
                </asp:DropDownList>
              </div>

             <div   >
                 Parentesco do Assistido:<asp:TextBox ID="txtParentescoAssistido"  class="form-control" runat="server" MaxLength="50" Width="300px" Height="30px"></asp:TextBox>
                 ID do Assistido Responsável<br />
                 <asp:TextBox ID="txtIDResponsavelAssistido" runat="server" Width="300px" class="form-control" Height="30px"></asp:TextBox>
               
             </div>
                <br />

                <div>
                     &nbsp;<asp:Button ID="btnNovo" runat="server" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" />
&nbsp;<asp:Button ID="btn_cadastrar"  class="btn btn-primary" runat="server" Text="Salvar" OnClick="btn_cadastrar_Click" />
                     &nbsp;<asp:Button ID="btn_buscar" class="btn btn-primary" runat="server" Text="Buscar" OnClick="btn_buscar_Click" />
                 </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmentidade.aspx.cs" Inherits="ProjetoArcos.cadentidade1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="areaformulario" >

            <div class="container-fluid">

            <div class="entidade">
                Entidades
            </div>

            <div class="acao">
                <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>
            </div>
            <div>

                <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>

            </div>
            <div  >
               <asp:Label ID="Label2" runat="server" Text="Nome da Entidade:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNomeEntidade" ErrorMessage="Nome da Entatidade Vazio" ForeColor="#FF3300" ValidationGroup="form">*</asp:RequiredFieldValidator>
               <asp:TextBox ID="txtNomeEntidade" class="form-control"  runat="server" Width="300px" MaxLength="50" Height="30px" ValidationGroup="form"></asp:TextBox>
            </div>


            <div  >
               <asp:Label ID="Label10" runat="server" Text="CNPJ: "></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtCNPJ" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCNPJ" ErrorMessage="Formato Incorreto" ForeColor="#FF3300" ValidationExpression="[0-9]{14}" ValidationGroup="form">Formato Incorreto</asp:RegularExpressionValidator>
               <asp:TextBox ID="txtCNPJ" class="form-control" runat="server" Width="195px" MaxLength="14" Height="30px" Placeholder="APENAS NÚMEROS" ValidationGroup="form"></asp:TextBox>
            </div>


            <div  >
               <asp:Label ID="Label3" runat="server" Text="Logradouro:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLogradouro" ErrorMessage="Logradouro Vazio" ForeColor="#FF3300" ValidationGroup="form">*</asp:RequiredFieldValidator>
               <asp:TextBox ID="txtLogradouro"  class="form-control" runat="server" Width="300px" MaxLength="50" Height="30px" ValidationGroup="form"></asp:TextBox>
            </div>

            <div>
               <asp:Label ID="Label4" runat="server" Text="Número:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNumero" ErrorMessage="Número Vazio" ForeColor="#FF3300" ValidationGroup="form">*</asp:RequiredFieldValidator>
               <asp:TextBox ID="txtNumero" class="form-control" runat="server" Width="140px" MaxLength="10" Height="30px" ValidationGroup="form"></asp:TextBox>         
            </div>

            <div  >
               <asp:Label ID="Label5" runat="server" Text="Bairro:" ToolTip="  "></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBairro" ErrorMessage="Bairro Vazio" ForeColor="#FF3300" ValidationGroup="form">*</asp:RequiredFieldValidator>
               <asp:TextBox ID="txtBairro" class="form-control" runat="server" Width="300px" MaxLength="30" Height="30px" ValidationGroup="form"></asp:TextBox>
            </div>

            <div  >
               <asp:Label ID="Label6" runat="server" Text="CEP:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtCEP" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCEP" ErrorMessage="Formato Incorreto" ForeColor="#FF3300" ValidationExpression="[0-9]{8}" ValidationGroup="form"></asp:RegularExpressionValidator>
               <asp:TextBox ID="txtCEP" class="form-control" runat="server" MaxLength="9" Height="30px" Width="300px" Placeholder="APENAS NÚMEROS" ValidationGroup="form"></asp:TextBox>
            </div>

             <div   >
               <asp:Label ID="Label7" runat="server" Text="Cidade:"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCidade" ErrorMessage="Cidade Vazio" ForeColor="#FF3300" ValidationGroup="form">*</asp:RequiredFieldValidator>
               <asp:TextBox ID="txtCidade" class="form-control" runat="server" MaxLength="40" Height="30px" Width="300px" ValidationGroup="form"></asp:TextBox>
             </div>

              <div   >
                <asp:Label ID="Label8" runat="server" Text="Estado:"></asp:Label>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="drpEstado" ErrorMessage="Estado Vazio" ForeColor="#FF3300" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:DropDownList ID="drpEstado" class="form-control" runat="server" Height="30px" Width="300px" ValidationGroup="form">
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
                <asp:Label ID="Labe20" runat="server" Text="Presidente:"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPresidente" ErrorMessage="Presidente Vazio" ForeColor="#FF3300" ValidationGroup="form">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="txtPresidente"  class="form-control" runat="server" MaxLength="50" Width="300px" Height="30px" ValidationGroup="form"></asp:TextBox>
                 <asp:Label ID="Label11" runat="server" Text="Administrador:"></asp:Label>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtAdmnistrador" ErrorMessage="Administrador Vazio" ForeColor="#FF3300" ValidationGroup="form">*</asp:RequiredFieldValidator>
                 <br />
                 <asp:DropDownList ID="txtAdmnistrador" runat="server"  Height="30px" Width="300px" ValidationGroup="form">
                 </asp:DropDownList>
                 <br />
                 <br />
             </div>

             <div>
                 <asp:Button ID="btnNovo" runat="server" CssClass="btn btn-primary"  Font-Bold="True" OnClick="btnNovo_Click" Text="Novo" />
&nbsp;<asp:Button ID="btnCadastra" class="btn btn-primary" runat="server" OnClick="btnCadastra_Click" Text="Salvar" Font-Bold="True" ValidationGroup="form" />
             
                &nbsp;<asp:Button ID="btnConsulta" class="btn btn-primary" runat="server" Text="Buscar" Font-Bold="True" OnClick="btnConsulta_Click" />
                 <br />
                 <br />
                 <br />
             </div>
                </div>


         </div>

</asp:Content>

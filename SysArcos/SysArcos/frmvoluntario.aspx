<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmvoluntario.aspx.cs" Inherits="ProjetoArcos.frmvoluntario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbl_Status" runat="server" Text="Cadastrando"></asp:Label>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Cadastrar" />
    <asp:Label ID="lblID" runat="server" Text="ID" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="lbl_vnome" runat="server" Text="Nome"></asp:Label>
<br />
<asp:TextBox ID="txt_vnome" runat="server" Height="30px" Width="300px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rqd_Nome" runat="server" ErrorMessage="Campo &quot;Nome&quot; é obrigatório." ForeColor="Red" Height="30px" Width="30px" ControlToValidate="txt_vnome" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
<br />
<asp:Label ID="lbl_vcpf" runat="server" Text="CPF"></asp:Label>
<br />
<asp:TextBox ID="txt_vcpf" runat="server" Height="30px" Width="300px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rqd_CPF" runat="server" ErrorMessage="Campo &quot;CPF&quot; é obrigatório." ForeColor="Red" Height="30px" Width="30px" ControlToValidate="txt_vcpf" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
<br />
<asp:Label ID="lbl_vEndereco" runat="server" Text="Endereço"></asp:Label>
<br />
<asp:TextBox ID="txt_vendereco" runat="server" Height="30px" Width="300px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rqd_Endereco" runat="server" ErrorMessage="Campo &quot;Endereço&quot; é obrigatório." ForeColor="Red" Height="30px" Width="30px" ControlToValidate="txt_vendereco" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
<br />
<asp:Label ID="lbl_vnumero" runat="server" Text="Número"></asp:Label>
<br />
<asp:TextBox ID="txt_vnumero" runat="server" Height="30px" Width="300px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rqd_Numero" runat="server" ErrorMessage="Campo &quot;Número&quot; é obrigatório." ForeColor="Red" Height="30px" Width="30px" ControlToValidate="txt_vnumero" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
<br />
<asp:Label ID="lbl_vBairro" runat="server" Text="Bairro"></asp:Label>
<br />
<asp:TextBox ID="txt_vBairro" runat="server" Height="30px" Width="300px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rqd_Bairro" runat="server" ErrorMessage="Campo &quot;Bairro&quot; é obrigatório." ForeColor="Red" Height="30px" Width="30px" ControlToValidate="txt_vBairro" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
<br />
<asp:Label ID="lbl_vcep" runat="server" Text="CEP"></asp:Label>
<br />
<asp:TextBox ID="txt_vcep" runat="server" Height="30px" Width="300px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rqd_CEP" runat="server" ErrorMessage="Campo &quot;CEP&quot; é obrigatório." ForeColor="Red" Height="30px" Width="30px" ControlToValidate="txt_vcep" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
<br />
<asp:Label ID="lbl_vCidade" runat="server" Text="Cidade"></asp:Label>
<br />
<asp:TextBox ID="txt_vCidade" runat="server" Height="30px" Width="300px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rqd_Cidade" runat="server" ErrorMessage="Campo &quot;Cidade&quot; é obrigatório." ForeColor="Red" Height="30px" Width="30px" ControlToValidate="txt_vCidade" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
    &nbsp;
    <asp:Label ID="lbl_vEstado" runat="server" Text="Estado"></asp:Label>
    &nbsp;
<asp:DropDownList ID="drp_vEstado" runat="server" Height="30px">
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
<br />
<asp:Label ID="lbl_vDispo" runat="server" Text="Disponibilidade"></asp:Label>
<br />
<asp:TextBox ID="txt_vDispo" runat="server" Height="30px" Width="300px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rqd_Dispo" runat="server" ErrorMessage="Campo &quot;Disponibilidade&quot; é obrigatório." ForeColor="Red" Height="30px" Width="30px" ControlToValidate="txt_vDispo" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
<br />
<asp:Label ID="lbl_vSerDisp" runat="server" Text="Serviços Disponiveis"></asp:Label>
<br />
<asp:TextBox ID="txt_vSerDisp" runat="server" Height="30px" Width="300px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rqd_ServDisp" runat="server" ErrorMessage="Campo &quot;Serviços&quot; é obrigatório." ForeColor="Red" Height="30px" Width="30px" ControlToValidate="txt_vSerDisp" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
    <br />
    <asp:CheckBox ID="ckb_vativo" runat="server" Text="Ativo" />
    <br />
    <br />
&nbsp;<asp:Button ID="btn_Cadastrar" class="btn btn-primary" Font-Bold="True" runat="server" Text="Cadastrar" OnClick="btn_Cadastrar_Click" Height="40px" Width="100px" ValidationGroup="Cadastrar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_Consultar" class="btn btn-primary" Font-Bold="True" runat="server" Height="40px" Text="Consultar" Width="100px" OnClick="btn_Consultar_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_Limpar" class="btn btn-primary" Font-Bold="True" runat="server" Height="40px" OnClick="btn_Limpar_Click" Text="Limpar Campos" Width="160px" />
<br />
</asp:Content>

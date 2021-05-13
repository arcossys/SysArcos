<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmvoluntario.aspx.cs" Inherits="ProjetoArcos.frmvoluntario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="clear:both"></div>
    <div class="areaformulario">
        <div class="container-fluid">
            <div class="row">
                <div class="entidade col">   
                    Voluntários
                </div>
            </div>
        </div>
        <div class="row">
            <div class="acao col">
                <asp:Label ID="lbl_Status" runat="server" Text="NOVO"></asp:Label>
            </div>
        </div>
        <div class="row">   
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Cadastrar" />
            <asp:Label ID="lblID" runat="server" Text="ID" Visible="False"></asp:Label>
        </div>
		<div class="row">
			<div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="lbl_vnome" runat="server" Text="Nome"></asp:Label>
                <asp:RequiredFieldValidator ID="rqd_Nome" runat="server" ErrorMessage="Campo &quot;Nome&quot; é obrigatório." ForeColor="Red" ControlToValidate="txt_vnome" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
			</div>
			<div class="col-12 col-lg-4">
                <asp:TextBox ID="txt_vnome" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="lbl_vcpf" runat="server" Text="CPF"></asp:Label>
                <asp:RequiredFieldValidator ID="rqd_CPF" runat="server" ErrorMessage="Campo &quot;CPF&quot; é obrigatório." ForeColor="Red" ControlToValidate="txt_vcpf" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Formato invalido" ControlToValidate="txt_vcpf" ValidationExpression="^[0-9]{3}\.[0-9]{3}\.[0-9]{3}\-[0-9]{2}$" ForeColor="Red"></asp:RegularExpressionValidator>
			</div>
			<div class="col-12 col-lg-4">
                 <asp:TextBox onkeydown="mascara( this,CPF  );" ID="txt_vcpf" runat="server" CssClass="form-control" Placeholder="999.999.999-99" MaxLength="14"></asp:TextBox>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="lbl_vEndereco" runat="server" Text="Endereço"></asp:Label>
                <asp:RequiredFieldValidator ID="rqd_Endereco" runat="server" ErrorMessage="Campo &quot;Endereço&quot; é obrigatório." ForeColor="Red" ControlToValidate="txt_vendereco" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
			</div>
			<div class="col-12 col-lg-4">
                <asp:TextBox ID="txt_vendereco" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="lbl_vnumero" runat="server" Text="Número"></asp:Label>
                <asp:RequiredFieldValidator ID="rqd_Numero" runat="server" ErrorMessage="Campo &quot;Número&quot; é obrigatório." ForeColor="Red" ControlToValidate="txt_vnumero" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
			</div>
			<div class="col-12 col-lg-4">
                <asp:TextBox ID="txt_vnumero" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="lbl_vBairro" runat="server" Text="Bairro"></asp:Label>
                <asp:RequiredFieldValidator ID="rqd_Bairro" runat="server" ErrorMessage="Campo &quot;Bairro&quot; é obrigatório." ForeColor="Red" ControlToValidate="txt_vBairro" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
			</div>
			<div class="col-12 col-lg-4">
                <asp:TextBox ID="txt_vBairro" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="lbl_vcep" runat="server" Text="CEP"></asp:Label>
                <asp:RequiredFieldValidator ID="rqd_CEP" runat="server" ErrorMessage="Campo &quot;CEP&quot; é obrigatório." ForeColor="Red" ControlToValidate="txt_vcep" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Formato incorreto" ControlToValidate="txt_vcep" ValidationExpression="^[0-9]{5}\-[0-9]{3}$" ForeColor="Red"></asp:RegularExpressionValidator>
			</div>
			<div class="col-12 col-lg-4">
                <asp:TextBox onkeydown="mascara( this,CEP);" ID="txt_vcep" runat="server" CssClass="form-control" Placeholder="99999-999" MaxLength="9"></asp:TextBox>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="lbl_vCidade" runat="server" Text="Cidade"></asp:Label>
                <asp:RequiredFieldValidator ID="rqd_Cidade" runat="server" ErrorMessage="Campo &quot;Cidade&quot; é obrigatório." ForeColor="Red" ControlToValidate="txt_vCidade" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
			</div>
			<div class="col-12 col-lg-4">
                <asp:TextBox ID="txt_vCidade" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-lg-4 row_fields">
                <asp:Label ID="lbl_vEstado" runat="server" Text="Estado"></asp:Label>
                <asp:DropDownList ID="drp_vEstado" runat="server" CssClass="form-control">
                    <asp:ListItem></asp:ListItem>
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
        </div>
		<div class="row">
			<div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="lbl_vDispo" runat="server" Text="Disponibilidade"></asp:Label>
                <asp:RequiredFieldValidator ID="rqd_Dispo" runat="server" ErrorMessage="Campo &quot;Disponibilidade&quot; é obrigatório." ForeColor="Red" ControlToValidate="txt_vDispo" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
			</div>
			<div class="col-12 col-lg-4">
                <asp:TextBox ID="txt_vDispo" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-lg-10 row_fields">
                <asp:Label ID="lbl_vSerDisp" runat="server" Text="Serviços Disponiveis"></asp:Label>
                <asp:RequiredFieldValidator ID="rqd_ServDisp" runat="server" ErrorMessage="Campo &quot;Serviços&quot; é obrigatório." ForeColor="Red" Width="30px" ControlToValidate="txt_vSerDisp" ValidationGroup="Cadastrar">*</asp:RequiredFieldValidator>
			</div>
			<div class="col-12 col-lg-4">
                <asp:TextBox ID="txt_vSerDisp" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
		</div>
        <br/>
        <div class="row">
            <div class="col">
                <asp:CheckBox ID="ckb_vativo" runat="server" Text="Ativo" Checked="True"/>
            </div>
        </div>
	<div class="row">
		<div class="col-12 col-lg-4 row_buttons"> 
            &nbsp;<asp:Button ID="btn_Limpar" class="btn btn-primary" Font-Bold="True" runat="server" OnClick="btn_Limpar_Click" Text="Novo" Width="100%" font-size="x-large"/>
		</div>
		<div class="col-12 col-lg-4 row_buttons">
            &nbsp;<asp:Button ID="btn_Cadastrar" class="btn btn-primary" Font-Bold="True" runat="server" Text="Salvar" OnClick="btn_Cadastrar_Click" ValidationGroup="Cadastrar" Width="100%" font-size="x-large"/>
		</div>
		<div class="col-12 col-lg-4 row_buttons">
            &nbsp;<asp:Button ID="btn_Consultar" class="btn btn-primary" Font-Bold="True" runat="server" Text="Buscar" OnClick="btn_Consultar_Click" Width="100%" font-size="x-large"/>
		</div>
		<br/>          	
	</div>
    </div>
</asp:Content>

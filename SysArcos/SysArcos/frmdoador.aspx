<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmdoador.aspx.cs" Inherits="ProjetoArcos.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div  >
        
        <div>
            <asp:Label ID="lblAcao" runat="server" Text="NOVO"></asp:Label>

            <br />
            <asp:Label ID="lblID" runat="server"></asp:Label>

        </div>
        <asp:Label ID="Label2" runat="server" Text="Nome do doador"></asp:Label>
        <asp:TextBox ID="txt_nomedoador" class="form-control"  runat="server" Width="300px" MaxLength="50" Height="30px"></asp:TextBox>
    </div>
    <div  >
        <asp:Label ID="Label10" runat="server" Text="Logradouro"></asp:Label>
        <asp:TextBox ID="txt_logradouro" class="form-control" runat="server" Width="206px" MaxLength="14" Height="30px"></asp:TextBox>
    </div>
    <div   >
        <asp:Label ID="Label4" runat="server" Text="Número:"></asp:Label>
        <asp:TextBox ID="txt_numero" class="form-control" runat="server" Width="140px" MaxLength="10" Height="30px"></asp:TextBox>
    </div>
    <div  >
        <asp:Label ID="Label5" runat="server" Text="Bairro:" ToolTip="  "></asp:Label>
        <asp:TextBox ID="txt_bairro" class="form-control" runat="server" Width="300px" MaxLength="30" Height="30px"></asp:TextBox>
    </div>
    <div  >
        <asp:Label ID="Label6" runat="server" Text="CEP:"></asp:Label>
        <asp:TextBox ID="txt_CEP" class="form-control" runat="server" MaxLength="9" Height="30px" Width="300px"></asp:TextBox>
    </div>
    <div   >
        <asp:Label ID="Label7" runat="server" Text="Cidade:"></asp:Label>
        <asp:TextBox ID="txt_cidade" class="form-control" runat="server" MaxLength="40" Height="30px" Width="300px"></asp:TextBox>
    </div>
    <div   >
        <asp:Label ID="Label8" runat="server" Text="Estado:"></asp:Label>
        <asp:DropDownList ID="drp_estado" class="form-control" runat="server" Height="30px" Width="300px">
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
        <asp:Label ID="Labe20" runat="server" Text="Disponibilidade"></asp:Label>
        <asp:TextBox ID="txt_disponibilidade"  class="form-control" runat="server" MaxLength="50" Width="300px" Height="30px"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" Text="Tipo de doação"></asp:Label>
        <br />
        <asp:TextBox ID="txt_tipodoacao" runat="server" Width="294px"></asp:TextBox>
        <br />
        <asp:CheckBox ID="cb_ativo" runat="server" Text="Ativo" />
        <br />
    </div>
    <div>
        <asp:Button ID="btnCadastra" class="btn btn-primary" runat="server" OnClick="btnCadastra_Click" Text="Cadastrar" Font-Bold="True" Height="40px" Width="100px" />
        <asp:Button ID="btn_novo" class="btn btn-primary" runat="server" Text="Novo" Font-Bold="True" Height="40px" Width="100px" OnClick="btn_novo_Click" />
        <asp:Button ID="btnConsulta" class="btn btn-primary" runat="server" Text="Consultar" Font-Bold="True" Height="40px" Width="100px" OnClick="btnConsulta_Click" />
        <br />
        <br />
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscaassistido.aspx.cs" Inherits="ProjetoArcos.frmbuscaassistido" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Buscar Assistidos
    </div>

    <div>
        <asp:Label ID="lblBuscar" runat="server" Text="Buscar"></asp:Label>
        &nbsp;<asp:TextBox ID="txtBusca" runat="server"></asp:TextBox>
        &nbsp;<asp:Button ID="btnBuscar" runat="server" class="btn btn-success btn-sm" Text="Buscar" OnClick="btnBuscar_Click" />
    </div>
    <br />
    <div>
        <div>
            &nbsp;<asp:Label ID="Label1" runat="server" Text="Responsabilidade"></asp:Label>
&nbsp;<asp:DropDownList ID="ddlTipoResponsabilidade" runat="server">
                <asp:ListItem Value="0">Dependente e Titular</asp:ListItem>
                <asp:ListItem Value="1">Titular</asp:ListItem>
                <asp:ListItem Value="2">Dependente</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <asp:RadioButton ID="rdNome" runat="server" Text="Nome" />
        </div>
    </div>

    <div>

        <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" ShowHeaderWhenEmpty="True" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ENTIDADE" HeaderText="Entidade" />
                <asp:BoundField HeaderText="Nome" DataField="NOME" />
                <asp:BoundField HeaderText="CPF" DataField="CPF" />
                <asp:BoundField HeaderText="DATA DE NASCIMENTO" DataField="DATA_NASCIMENTO" DataFormatString = "{0:dd/MM/yyyy}"/>
                <asp:BoundField HeaderText="RESPONSÁVEL" DataField="PARENTESCO_ASSISTIDO_RESPONSAVEl" />
                <asp:BoundField DataField="RESPONSABILIDADE" HeaderText="RESPONSABILIDADE" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

    </div>
    <div>

        <br />
        <asp:Button ID="btnCancelar" class="btn btn-primary" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />

        &nbsp;<asp:Button ID="btnSelecionar" class="btn btn-primary" runat="server" Text="Editar" OnClick="btnSelecionar_Click" />
        &nbsp;<asp:Button ID="btnRemover" class="btn btn-primary" runat="server" Text="Remover" OnClick="btnRemover_Click"
            OnClientClick="return confirm('Deseja remover?');" />

    </div>

</asp:Content>

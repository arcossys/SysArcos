<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmcategoria_produto.aspx.cs" Inherits="ProjetoArcos.frmcategoria_produto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="lblcategoria" runat="server" Text="Categoria:"></asp:Label>
               <asp:TextBox ID="txtcategoria" class="form-control"  runat="server" Width="300px" MaxLength="50" Height="30px" ReadOnly="True"></asp:TextBox>
            </p>
    <p>
        <asp:Button ID="btnNovo" runat="server" class="btn btn-primary" Text="Novo" OnClick="btnNovo_Click" />
&nbsp;<asp:Button ID="btncadastrar" runat="server" class="btn btn-primary" Text="Cadastrar" OnClick="btncadastrar_Click" />
&nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="DESCRICAO" HeaderText="DESCRICAO" SortExpression="DESCRICAO" />
                <asp:BoundField DataField="DATA_HORA_CRIACAO_REGISTRO" HeaderText="DATA_HORA_CRIACAO_REGISTRO" SortExpression="DATA_HORA_CRIACAO_REGISTRO" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ARCOS_V2ConnectionString %>" SelectCommand="SELECT * FROM [CATEGORIA_PRODUTO]" DeleteCommand="DELETE FROM [CATEGORIA_PRODUTO] WHERE [ID] = @ID" InsertCommand="INSERT INTO [CATEGORIA_PRODUTO] ([DESCRICAO], [DATA_HORA_CRIACAO_REGISTRO]) VALUES (@DESCRICAO, @DATA_HORA_CRIACAO_REGISTRO)" UpdateCommand="UPDATE [CATEGORIA_PRODUTO] SET [DESCRICAO] = @DESCRICAO, [DATA_HORA_CRIACAO_REGISTRO] = @DATA_HORA_CRIACAO_REGISTRO WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DESCRICAO" Type="String" />
                <asp:Parameter Name="DATA_HORA_CRIACAO_REGISTRO" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="DESCRICAO" Type="String" />
                <asp:Parameter Name="DATA_HORA_CRIACAO_REGISTRO" Type="DateTime" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

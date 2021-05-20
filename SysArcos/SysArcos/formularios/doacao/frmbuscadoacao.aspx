<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmbuscadoacao.aspx.cs" Inherits="SysArcos.formularios.doacao.frmbuscadoacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="entidade">
        Buscar Doação
    </div>    
    <div class="row">
        <div class="col-8 col-lg-5">
            <div class="input-group">
                <div class="input-group-prepend">
                   <span class="input-group-text" id="">Filtro</span>
                </div>                
                <asp:TextBox ID="txtBusca" runat="server" class="form-control"></asp:TextBox>
            </div>
        </div>        
        <div class="col-4 col-lg-2">
            <asp:Button ID="Button4" runat="server"  Font-Size="Larger" width="100%" Text="Buscar" CssClass="btn btn-success" />
        </div>
    </div>  
    <div class="row">
        <div  class="col-12 col-lg-6 row_fields">
            <fieldset class="border p-2 border-primary">
                <div class="form-check">
                    <asp:RadioButton ID="rdNome" runat="server" Checked="True" GroupName="filtro"
                        CssClass="form-check-input"/>
                    <asp:Label ID="lblRdNome" Text="Nome" runat="server"
                        CssClass="form-check-label" for="rdNome"></asp:Label>
                </div>
                <div class="form-check">
                    <asp:RadioButton ID="rdLogin" runat="server" GroupName="filtro"
                        CssClass="form-check-input"/>
                    <asp:Label ID="lblRgLogin" Text="Login" runat="server"
                        CssClass="form-check-label" for="rLogin"></asp:Label>
                </div>
            </fieldset>
        </div>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <%--<AlternatingRowStyle BackColor="White" />--%>
            <Columns>
                <asp:BoundField HeaderText="Entidade" />
                <asp:BoundField HeaderText="Doador" />
                <asp:BoundField HeaderText="Data" />
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
    <br/>
    <div class="row">        
        <div class="col-12 col-lg-4 row_buttons">    
            <asp:Button ID="Button1" runat="server" Text="Cancelar"  CssClass="btn btn-primary" OnClick="Button1_Click" Width="100%" Font-Size="X-Large" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">   
            <asp:Button ID="Button2" runat="server" Text="Editar" CssClass="btn btn-primary" Width="100%" Font-Size="X-Large" />
        </div>
        <div class="col-12 col-lg-4 row_buttons">       
            <asp:Button ID="Button3" runat="server" Text="Remover" CssClass="btn btn-primary" Width="100%" Font-Size="X-Large" />
        </div>
    </div>
</asp:Content>
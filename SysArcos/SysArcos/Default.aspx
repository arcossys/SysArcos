<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoArcos.Default" %>
 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet"/>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <link href="css/PaginaLogin.css" rel="stylesheet" />
    <title>Login ARCOS</title>
</head>
<body>        
    <form id="form1" runat="server" class="align-content-lg-center" >    
        <div>
          <div class="imgcontainer"></div>
              <div class="row"></div>
                  <div class="col-12 col-md-12"></div>
             <img src="imagens/ArcosSys.png" alt="Avatar" class="avatar" />
         </div>

          <div class="container">
              <div class="row"></div>
              <div class="col-12 col-md-12"></div>
            <label for="uname" style="color: white"><b>Usuário</b></label>
            <asp:TextBox ID="txtUsuario" runat="server" Placeholder="Usuario" class="form-control" Height="35px"></asp:TextBox>

            <label for="psw" style="color:white"><b>Senha</b></label>
            <asp:TextBox ID="txtSenha" runat="server" Placeholder="Senha"  type="password" class="rounded" Height="35px"></asp:TextBox>
        
            <asp:Button ID="btnEntrar" runat="server" Text="Entrar" style="font-weight:bold" class="btn btn-primary btn-sm" OnClick="btnEntrar_Click" />
        

              <br />
              <br />
              <asp:Label ID="Label1" runat="server" Text="Versão 0.8"></asp:Label>
        

          </div>
        
    </form>
</body>
</html>

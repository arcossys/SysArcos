<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoArcos.Default" %>
 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet"/>
   
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    
    <link href="css/PaginaLogin.css" rel="stylesheet" />
    <title>Login ARCOS</title>
</head>
<body>
    <div class="container">

        <div class="row" style="text-align:center">
            <div class="col">
                <img src="imagens/ArcosSys.png" alt="Avatar" class="avatar"/>
            </div>
         </div>
     <br />
       
    <div class="row">
          <div class="col">
              <form id="form1" runat="server">    
                <label for="uname" style="color: white"><b>Usuário</b></label>
                <asp:TextBox ID="txtUsuario" runat="server" Placeholder="Usuario" class="form-control" Height="35px"></asp:TextBox>

                <label for="psw" style="color:white"><b>Senha</b></label>
                <asp:TextBox ID="txtSenha" runat="server" Placeholder="Senha"  type="password" class="rounded" Height="35px"></asp:TextBox>
        
                <asp:Button ID="btnEntrar" runat="server" Text="Entrar" style="font-weight:bold" class="btn btn-primary btn-sm" OnClick="btnEntrar_Click" />
        

              <br />
              <br />
                <asp:Label ID="Label1" runat="server" Text="Versão 0.8"></asp:Label>
                </form>
            </div>
       </div>    
    </div>
        
</body>
</html>




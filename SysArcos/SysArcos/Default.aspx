<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoArcos.Default" %>
 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="\css\PaginaLogin.css" rel="stylesheet" />

    <title>Login ARCOS</title>
</head>
<body>
    
    <form id="form1" runat="server" class="align-content-lg-center" >
        <div>
            <div class="main">
                <div class="container">                    
                       <div class="middle ">                                                    
                            <div id="login">
                                <img src="\imagens\ArcosLogo.png" alt="" class="img-fluid"/>
                                <fieldset class="clearfix">
                                    <div class="forml">
                                         <p ><span class="fa fa-user"></span><asp:TextBox ID="txtUsuario" runat="server" Placeholder="Usuario" class="form-control" Height="35px" Width="305px"></asp:TextBox></p>
                                    <p><span class="fa fa-lock"></span><asp:TextBox ID="txtSenha" runat="server" Placeholder="Senha"  type="password" class="rounded" Height="35px" Width="305px"></asp:TextBox></p>


                                    </div>

                                   
                                    <div>
                                        <span style="width:48%; text-align:left;  display: inline-block;">
                                            <a class="large-text" href="#">Esqueceu a Senha?</a>
                                        </span>
                                        <span style="width:50%; text-align:right;  display: inline-block;">
                                            <asp:Button ID="btnEntrar" runat="server" Text="Entrar" class="btn btn-primary btn-sm" OnClick="btnEntrar_Click">
                                            </asp:Button>
                                        </span>
                                     </div> 
                                </fieldset>
                                <div class="clearfix">
                                </div>
                                <div class="clearfix">
                                </div>
                            </div> <!-- end login -->
                             
                            <div>
                                <div class="clearfix">
                                      <img  src="\imagens\ArcosSys.png" class="rounded float-right">
                                </div>
                            </div>
                        </div>                   
                </div>
           
        </div>
    </form>

          
            
           



  </div>

 



   
</body>



</html>

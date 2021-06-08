<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EXPRESS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Express login</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom styles for this template -->
    <link href="css/login.css" rel="stylesheet"/>
</head>
<body>
     <!-- Navigation -->
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">
            <a class="navbar-brand" href="index.html">Express</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="signin.html">Sign in</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Page Content-->
    <div class="box1">
        <div class="box">
            <form id="form1" runat="server">
                <div class="title">
                    <h1>Login</h1>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Correo electrónico</label>
                    <%--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ingrese su email">--%>
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese su email" TextMode="Email" required=""></asp:TextBox>
                    <small id="emailHelp" class="form-text text-muted">Nunca compartiremos tu información.</small>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Contraseña</label>
                    <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Ingrese su contraseña">--%>
                    <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Ingrese su contraseña" TextMode="Password" required=""></asp:TextBox>
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1"/>
                    <label class="form-check-label" for="exampleCheck1">Recordarme</label>
                </div>

                <%--<a href="inicio.html" class="btn">Entrar</a>--%>
                <asp:Button ID="btnEntrar" runat="server" class="btn" Text="Entrar" OnClick="btnEntrar_Click"/>
            </form>
        </div>     
    </div>

    <footer>
        <div class="container">
            <p class="m-0 text-center">Copyright &copy; Express 2021</p>
        </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

 
</body>
</html>

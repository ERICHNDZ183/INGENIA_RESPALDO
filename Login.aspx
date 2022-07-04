<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PROYECTO_INGENIA.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="~/lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet"/>
    <title>PCT Ingenia</title>

<style>
    footer{

position: fixed;

width: 1500px;

bottom: 55px;

height: 2px;

padding-bottom: 16px;

border-top: 2px solid rgb(0, 255, 144);

z-index:2000;

}
    body 
     {
        background-image: url("Imagenes/fondo_login_2.jpg");
        background-size: 130% 200%;
        background-repeat: no-repeat;
        padding:25px;
  
     }
    table thead
        {
            background-color: #ac0a0a;
            color: rgb(0, 255, 144);
        }
    .centrado
    {
	    margin-left: 550px;
        margin-right: 100px;
    }
    .centrado_img
    {
	    margin-left: 40px;
        margin-right: 100px;
    }
    .auto-style2 {
        left: -1px;
        bottom: 173px;
        width: 1526px;
    }
</style>
       
</head>
<body>

    <nav class="navbar navbar-expand-lg bg-dark">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="INICIO.aspx">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>

      </ul>
        <button class="btn btn-outline-success" type="submit">Search</button>
      
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

    <form class="centrado" id="form1" runat="server">
        <div class="card text-center"  style="width: 18rem;" margin="500px">
          <div class="card-body">
               <img src="Imagenes/LOGO.jpeg" class="rounded-3 centrado_img" alt="HTML5 ICON" width="150" height="90" />
            <h5 class="card-title">Login</h5>
            <div class="form-floating mb-3">
              <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com"/>
              <label for="floatingInput">Correo Electronico</label>
            </div>
            <div class="form-floating">
              <input type="password" class="form-control" id="floatingPassword" placeholder="Password"/>
              <label for="floatingPassword">Contraseña</label>
            </div>
          </div>
            <div>
                <button class="btn btn-success">Iniciar</button>
           </div>
            <p>¿Aun no tienes cuenta? ¡resgistrate!</p>
            <asp:button ID="REGISTRARSE" runat="server" text="Registrar" class="btn-warning" OnClick="REGISTRARSE_Click"/>
        </div>
    </form>

  


  <!--  <footer  style="margin-left: 0px; " class="footer">
    <div style="background-color: #000000; color: #ffffff;">
       Concepción Fuentes L3 Magisterios 93320 Poza Rica de Hidalgo, Veracuz de Ignacio de la Llave, Mexico.<br/>
       Telefono: 7828181277<br />
       ventas@grupoingenia.com.mx
    </div>
    </footer>  -->
</body>
</html>

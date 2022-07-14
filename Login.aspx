<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PROYECTO_INGENIA.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="~/lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet"/>
    <title>PCT Ingenia</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>
    

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
    .auto-style1 {
        left: 2px;
        bottom: 38px;
    }
</style>
       
</head>
<body>
     <form class="centrado" id="form1" runat="server">
     <navbar>
        <nav class="navbar navbar-dark bg-dark fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand">
        <img src="Imagenes/LOGO.jpeg" alt="" width="30" height="24" class="d-inline-block aling-text-top" />
        PTC INGENIA
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="offcanvas offcanvas-end   bg-dark"  tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title; color"  id="offcanvasNavbarLabel">Menú</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body bg-dark">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="INICIO.aspx">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Login.aspx">Iniciar Sesion</a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Clientes
            </a>
            <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown">
              <li><a class="dropdown-item" href="Administrador/Clientes.aspx">Consulta Clientes</a></li>
              <li><a class="dropdown-item" href="Administrador/Editar_Clientes.aspx">Editar Clientes</a></li>
              <li><a class="dropdown-item" href="Administrador/FORMULARIO_CLIENTES.aspx">Agregar Clientes</a></li>
            </ul>
          </li>

            
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown2" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Productos
            </a>
            <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown">
              <li><a class="dropdown-item" href="Administrador/PRODUCTOS">Consulta Productos</a></li>
              <li><a class="dropdown-item" href="Administrador/FORMULARIO_PRODUCTOS">Agrega Productos</a></li>
              <li><a class="dropdown-item" href="Administrador/Editar_Producto">Edita Productos</a></li>
            </ul>
          </li>

        </ul>
      </div>
    </div>
  </div>
</nav>
    </navbar>
    
   
        <div class="card text-center"  style="width: 18rem; left: -24px; top: 106px;" margin="500px">
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


  


  <footer  style="margin-left: 0px; " class="auto-style1">
    <div style="background-color: #000000; color: #ffffff;">
       Concepción Fuentes L3 Magisterios 93320 Poza Rica de Hidalgo, Veracuz de Ignacio de la Llave, Mexico.<br/>
       Telefono: 7828181277<br />
       ventas@grupoingenia.com.mx
    </div>
    </footer> 

      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>


</body>
</html>

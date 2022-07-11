 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="INICIO.aspx.cs" Inherits="PROYECTO_INGENIA.INICIO" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>    
    <title>PTC INGENIA</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>
    
    <link href="~/lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet"/>
  
</head>
   

<body>

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
            <a class="nav-link active" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
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

 
    <div id="carouselExampleDark" class="carousel carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>


  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="1800">
      <img src="Imagenes/puppy.jpg" class="d-block w-100" alt="banner 1"/>
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="1800">
      <img src="Imagenes/fondo_login.jpg" class="d-block w-100" alt="banner 2"/>
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="Imagenes/fondo_login_2.jpg" class="d-block w-100" alt="banner 3"/>
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>


  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    
 



           <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">¿Quiénes Somos?</h5>
                            <p class="card-text">  
                                Con 19 años de experiencia PTCingenia Comenzó proporcionando servicios de TI locales 
                                hoy somos integradores de tecnología de las mejores marcas del mercado y soluciones digitales 
                                de próxima generación.<br/> 
                                Operamos bajo el modelo de calidad Harvar Quality, diseñamos, construimos
                                y ejecutamos nuestros proyectos con la más alta calidad.<br />
                                Nuestra experiencia tiene el principio de certificaciones en cableado estructurado,
                                fibra óptica, telefonía IP y servicios de preservación informática .<br />
                            </p>
                        <div>
                            <img src="Imagenes/logoptcsoluciones.jpg" width="200" height="150" />
                        </div>
                    </div>
                </div>
            </div>
          

            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"></h5>
                            <p class="card-text">
                                Optimiza tu negocio a través de tecnologías basadas en datos,
                                tenemos la Herrmientas necesarias.
                            </p>
                        <div>
                            <img src="Imagenes/leviton-300x127.jpg" width="100" height="50" />
                        </div>
                            <p>
                                Somos Diseñadores e instaldores certificados de Leviton
                            </p>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <div>
                                <img src="Imagenes/hyteralogo.jpg" width="100" height="50" />
                            </div>
                                <p class="card-text">
                                    Distribuidor de Hytera, fabricante de radios convencionales y radios poc.
                                </p>
                            <div>
                                <img src="Imagenes/contpac.jpg" width="100" height="50" />
                            </div>
                                <p>Distribuimos, instalamos y capacitamos Software de la Marca contpac.</p>
                        </div>
                    </div>
                </div>
                </div>
           </div>

   

        <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Experiencia</h5>
                            <p class="card-text">
                                Nuestro grupo contiene experiencia en sistemas de telecomunicaciones, sistema de telefonía, videovigilancia,
                                mantenimiento a equipos de conmutacion telefonica
                            </p><div>
                            <img src="Imagenes/WA_Data-864x1536.jpg" width="600" height="800" />
                        </div>
                    </div>
                </div> 

    <form id="form1" runat="server">
        

           
            
            
            
            

        
    </form>


<footer style="width:100%; margin-left: 0px;" class="footer">
    <div class="copyright" style="background-color: #0d47a1;">
        <div  class="container-fluid" style="background-color: #000; color: #ffffff;">
            Concepción Fuentes L3 Magisterios 93320 Poza Rica de Hidalgo, Veracuz de Ignacio de la Llave, Mexico.<br/>
            Telefono: 7828181277<br />
            ventas@grupoingenia.com.mx
        </div>
    </div>
</footer>

     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>


</body>
  

</html> 

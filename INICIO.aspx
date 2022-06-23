 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="INICIO.aspx.cs" Inherits="PROYECTO_INGENIA.INICIO" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>    
    <title>PTC INGENIA</title>
    <link href="~/lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet"/>
  
    <style type="text/css">    
        body{
            background-color: #FFF;
            color: rgb(0,0,0);
        }
        table thead{
            background-color: #ac0a0a;
            color: rgb(0, 255, 144);
        }
        {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: sans-serif;
        }

        header 
        {
            height: 64px;
            background: #2C3E50;
            color: #FFF;
            display: flex;
            justify-content: flex-end;
        }

        #btn-menu 
        {
            display: none;
        }

        header label 
        {
            font-size: 30px;
            cursor: pointer;
            display: none;
        }

        .menu ul
        {
            background: #2C3E50;
            display: flex;
            list-style: none;
        }

        .menu ul ul 
        {
            display: none;
        }

        .menu a 
        {
            display: block;
            padding: 15px 20px;
            color: #FFF;
            text-decoration: none;
            line-height: 32px;
            font-family: 'Ubuntu', sans-serif;
            font-weight: 700;
        }

        .menu a:hover 
        {
            background: #2C3E50;
        }

        .menu a i 
        {
            margin-left: 10px;
        }

        .menu ul li:hover ul
        {
            transition: all 0.3s ease;
            display: block;
            position: absolute;
        }

        @media (max-width: 768px) 
        {
            header label 
            {
                display: block;
                padding-top: 16px;
                padding-right: 16px;
                transition: all 0.4s ease;
            }
  
            .menu 
            {
                position: absolute;
                top: 64px;
                left: 0;
                width: 70%;
                transform: translateX(-100%);
                transition: all 0.3s;
            }
  
            .menu ul 
            {
                flex-direction: column;
                //display: block;
            }
  
            .menu ul li:hover ul
            {
                display: none;
                position: static;
            }
  
            .menu a i 
            {
                position: absolute;
                right: 16px;
                line-height: 32px;
            }
  
            #btn-menu:checked ~ .menu 
            {
                transform: translateX(0%);
            }
  
        }

          .centrado
          {
		    margin-left: 0px;
            margin-right: auto;
          }

           .centrado2
          {
		    margin-left: 90px;
            margin-right: 180px;
          }

           
</style> 
    <script>

  $(".submenu").click(function(){
  $(this).children("ul").slideToggle();
})

$("ul").click(function(ev){
  ev.stopPropagation();
})

        $carousel - control - color: $white;
        $carousel - control - width: 15 %;
        $carousel - control - opacity: .5;
        $carousel - control - hover - opacity: .9;
        $carousel - control - transition:        opacity .15s ease;

        $carousel - indicator - width: 30px;
        $carousel - indicator - height: 3px;
        $carousel - indicator - hit - area - height: 10px;
        $carousel - indicator - spacer: 3px;
        $carousel - indicator - opacity: .5;
        $carousel - indicator - active - bg: $white;
        $carousel - indicator - active - opacity: 1;
        $carousel - indicator - transition:      opacity .6s ease;

        $carousel - caption - width: 70 %;
        $carousel - caption - color: $white;
        $carousel - caption - padding - y: 1.25rem;
        $carousel - caption - spacer: 1.25rem;

        $carousel - control - icon - width: 2rem;

        $carousel - control - prev - icon - bg: url("data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16' fill='#{$carousel-control-color}'><path d='M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z'/></svg>");
        $carousel - control - next - icon - bg: url("data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16' fill='#{$carousel-control-color}'><path d='M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z'/></svg>");

        $carousel - transition - duration: .6s;
        $carousel - transition:                transform $carousel transform 2s ease, opacity .5s ease - out; // Define transform transition first if using multiple transitions (e.g., `transform 2s ease, opacity .5s ease-out`)

        $carousel - dark - indicator - active - bg: $black;
        $carousel - dark - caption - color: $black;
        $carousel - dark - control - icon - filter: invert(1) grayscale (100);
    </script> 
</head>
   

<body>
    <header>
     <img src="Imagenes/LOGO.jpeg" class="rounded-3 centrado" alt="HTML5 ICON" width="150" height="64" />
    <input type="checkbox" id="btn-menu" />
    <label for="btn-menu"><i class="fa fa-bars"></i></label>
    <nav class="menu">
      <ul>
        <li class="submenu"><a href="Administrador/CLIENTES.aspx">Clientes<i class="fa fa-caret-down"></i></a>
            <ul>
            <li><a href="Administrador/FORMULARIO_CLIENTES.aspx">Agregar Cliente</a></li>
            <li><a href="Administrador/Editar_Clientes.aspx">Editar Clientes</a></li>
            <li><a href="Administrador/HISTORIAL.aspx">Historial</a></li>
            </ul>
        </li>
          <li class="submenu"><a href="Administrador/PRODUCTOS.aspx">Productos<i class="fa fa-caret-down"></i></a>
          <ul>
            <li><a href="Administrador/FORMULARIO_PRODUCTOS">Agregar Producto</a></li>
            <li><a href="Administrador/Editar_Producto">Editar Productos</a></li>
          </ul>
        </li>
        <li><a href="Administrador/Servicios.aspx">Servicios</a></li>
        <li><a href="#">Compras</a></li>
        <li><a href="Login.aspx">Iniciar Sesion</a></li>
      </ul>
    </nav>
</header>
  
   <img src="Imagenes/LOGO.jpeg" class="d-block w-100" alt="..."/> 
 
     
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

   <div id="carouselExampleDark" class="carousel carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="Imagenes/puppy.jpg" class="d-block w-100" alt="..."/>
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="Imagenes/fondo_login.jpg" class="d-block w-100" alt="..."/>
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="Imagenes/fondo_login_2.jpg" class="d-block w-100" alt="..."/>
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
</body>
  

</html> 

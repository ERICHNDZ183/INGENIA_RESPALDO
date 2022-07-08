<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="PROYECTO_INGENIA.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="~/lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet"/>
    <title>PTC INGENIA</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>
    
     <link href="Estilos/Estilo.css" rel="stylesheet" type="text/css" />
     <style type="text/css">

         footer{

position: fixed;

width: 1500px;

bottom: 35px;

height: 2px;

padding-bottom: 16px;

border-top: 2px solid rgb(0, 255, 144);

z-index:2000;
margin-left: 0px;

}

         
.boton_personalizado {
    text-decoration: none;
    padding: 5px;
    font-weight: 600;
    font-size: 20px;
    color: #ffffff;
    background-color: #1883ba;
    border-radius: 20px;
    border: 2px solid #808080;
}

    .boton_personalizado:hover {
        color: #18803b;
        background-color: #ffffff;
    }

  
</style>
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
        <h5 class="offcanvas-title" color="white" id="offcanvasNavbarLabel">Menu</h5>
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
              <li><a class="dropdown-item" href="Administrador/Clientes.aspx">CONSULTA CLIENTES</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li>
                <hr class="dropdown-divider"/>
              </li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>

            
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown2" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Productos
            </a>
            <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li>
                <hr class="dropdown-divider"/>
              </li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>

        </ul>
      </div>
    </div>
  </div>
</nav>
    </navbar>


     <form id="form1" runat="server">
         <table>
            <tr>
                <td>
                    <div>
                    <asp:Button class="boton_personalizado" ID="btnHOME" runat="server" Text="HOME" OnClick="btnHOME_Click"/>
                    <asp:Button class="boton_personalizado" ID="btnHistorial" runat="server" Text="Historial" OnClick="btnHistorial_Click1" />
                    <asp:Button class="boton_personalizado" ID="btnAgregar_cliente" runat="server" Text="Agregar cliente" OnClick="btnAgregar_cliente_Click1"/>

                    </div>
                </td>
            </tr>
         </table>
   
        <table bordercolor="white"; style="background: #ffd800;" align="center" border="1">
             <tr fontcolor="#ffffff">
               <td fontcolor="#ffffff">
                   <asp:GridView ID="gvDatos" runat="server"  >
                   </asp:GridView>
               </td>
           </tr> 
       </table>
    </form>


 <footer style="width:201%; left: -1px;" class="footer">
    <div  class="container-fluid" style="background-color: #1883ba; color: #ffffff;">
       Concepción Fuentes L3 Magisterios 93320 Poza Rica de Hidalgo, Veracuz de Ignacio de la Llave, Mexico.<br/>
        Telefono: 7828181277<br />
        ventas@grupoingenia.com.mx
    </div>

</footer>
     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>


</body>
</html>

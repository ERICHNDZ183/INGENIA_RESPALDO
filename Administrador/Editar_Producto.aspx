<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editar_Producto.aspx.cs" Inherits="PROYECTO_INGENIA.Editar_Producto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>
    

      <style>
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
        body{
            background-color: rgb(0, 191, 255);
            color: #ffffff ;
        }
        table thead{
            background-color: #ac0a0a darkmagenta;
            color: rgb(0, 255, 144);
        }
    </style>
 <style type="text/css">
  .boton_personalizado{
    text-decoration: none;
    padding: 5px;
    font-weight: 600;
    font-size: 20px;
    color: #ffffff;
    background-color: #1883ba;
    border-radius: 20px;
    border: 2px solid #808080;

  }
  .boton_personalizado:hover{
    color: #18803b;
    background-color: #ffffff;
  }
     .auto-style1 {
         --bs-card-spacer-y: 1rem;
         --bs-card-spacer-x: 1rem;
         --bs-card-title-spacer-y: 0.5rem;
         --bs-card-border-width: 1px;
         --bs-card-border-color: var(--bs-border-color-translucent);
         --bs-card-border-radius: 0.375rem;
         --bs-card-box-shadow: ;
         --bs-card-inner-border-radius: calc(0.375rem - 1px);
         --bs-card-cap-padding-y: 0.5rem;
         --bs-card-cap-padding-x: 1rem;
         --bs-card-cap-bg: rgba(0, 0, 0, 0.03);
         --bs-card-cap-color: ;
         --bs-card-height: ;
         --bs-card-color: ;
         --bs-card-bg: #fff;
         --bs-card-img-overlay-padding: 1rem;
         --bs-card-group-margin: 0.75rem;
         position: relative;
         display: flex;
         flex-direction: column;
         min-width: 0;
         height: var(--bs-card-height);
         word-wrap: break-word;
         background-color: var(--bs-card-bg);
         background-clip: border-box;
         border-radius: var(--bs-card-border-radius);
         left: -8px;
         top: 60px;
     }
 </style>

</head>
<body>
    <form id="form1" runat="server">

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
        <div class="auto-style1">
            <div class="body-card">
                
        <div style="text-align: right;">
        <asp:Button class="boton_personalizado" ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click"/>
        <asp:Button class="boton_personalizado" ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click1"/>
        <asp:Button class="boton_personalizado" ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click"/>
        </div>

        <table style="width: 30%" align="center">
            <tr >
                <td class="style">
                    <asp:Label ID="lbl" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="ID PRODUCTO"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="txtIdProducto" runat="server" Width="205px" ></asp:TextBox>
                </td>
            </tr>

            <tr >
                <td class="style">
                    <asp:Label ID="lblNombre_Producto" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Nombre Producto"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="txtNombreProducto" runat="server" Width="205px" ></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="style">
                    <asp:Label ID="lblMarca_Producto" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Marca Producto"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMarcaProducto" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="style">
                    <asp:Label ID="lblModelo_" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Modelo "></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="txtModelo" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="style">
                    <asp:Label ID="lblEspecificacionesTecnicas" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Especificaciones Tecnicas"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEspecificaciones" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="style">
                    <asp:Label ID="lblCosto_Producto" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Costo Producto"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCostoProducto" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

        </table >

        
        <table align="center">
             <tr>
               <td>
                   <asp:GridView ID="gvDatos" runat="server">
                   </asp:GridView>
               </td>
            </tr>
        </table>
            </div>
        </div>

        
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

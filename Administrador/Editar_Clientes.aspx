<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editar_Clientes.aspx.cs" Inherits="PROYECTO_INGENIA.Editar_Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>
    
    <link href="Estilos/Estilo.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

footer {
    position: fixed;
    width: 1500px;
    bottom: 56px;
    height: 2px;
    padding-bottom: 16px;
    border-top: 2px solid rgb(0, 255, 144);
    z-index: 2000;
    margin-left: 0px;
}
        centrado {
            bottom: 82px;
        }
        .auto-style1 {
            width: 253px;
        }
        .auto-style2 {
            width: 222px;
        }
        .auto-style3 {
            width: 171px;
        }
        .auto-style4 {
            width: 171px;
            height: 51px;
        }
        .auto-style5 {
            width: 222px;
            height: 51px;
        }
        .auto-style6 {
            width: 171px;
            height: 130px;
        }
        .auto-style7 {
            width: 222px;
            height: 130px;
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
   

    <form id="form1" runat="server">
          
        <table border="1" align="center" style="centrado; width: 30%" bordercolor="blue">
            <caption>Tabla para editar clientes</caption>
            <tr >
                <td class="auto-style6" bgcolor="purple">
                    <asp:Label ID="lblId_Cliente" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="ID CLIENTE"></asp:Label>
                </td>
                <td bgcolor="green" class="auto-style7">
                <asp:TextBox ID="txtId_Cliente" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

            <tr >
                <td class="auto-style3" bgcolor="purple">
                    <asp:Label ID="lblNombre_Cliente" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Nombre_Cliente"></asp:Label>
                </td>
                <td bgcolor="green" class="auto-style2">
                <asp:TextBox ID="txtNombre_Cliente" runat="server" Width="205px" ></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style3" bgcolor="purple">
                    <asp:Label ID="lblApellido" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Apellido"></asp:Label>
                </td>
                <td bgcolor="green" class="auto-style2">
                    <asp:TextBox ID="txtApellido" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style3" bgcolor="purple">
                    <asp:Label ID="lblUbicacion" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Ubicacion"></asp:Label>
                </td>
                <td bgcolor="green" class="auto-style2">
                <asp:TextBox ID="txtUbicacion" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style3" bgcolor="purple">
                    <asp:Label ID="lblCorreo" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Correo"></asp:Label>
                </td>
                <td bgcolor="green" class="auto-style2">
                    <asp:TextBox ID="txtCorreo" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style3" bgcolor="purple">
                    <asp:Label ID="lblTelefono" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Telefono"></asp:Label>
                </td>
                <td bgcolor="green" class="auto-style2">
                    <asp:TextBox ID="txtTelefono" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td class="auto-style3" bgcolor="purple">
                    <asp:Label ID="lblNombre_Empresa" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Nombre Empresa"></asp:Label>
                </td>
                <td bgcolor="green" class="auto-style2">
                    <asp:TextBox ID="txtNombre_Empresa" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td class="auto-style3" bgcolor="purple">
                    <asp:Label ID="lblCorreo_Empresa" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Correo Empresa"></asp:Label>
                </td>
                <td bgcolor="green" class="auto-style2">
                    <asp:TextBox ID="txtCorreo_Empresa" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td class="auto-style4" bgcolor="purple">
                    <asp:Label ID="lblTelefono_Empresa" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Telefono Empresa"></asp:Label>
                </td>
                <td bgcolor="green" class="auto-style5">
                    <asp:TextBox ID="txtTelefono_Empresa" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>


        </table >

        
        <table align="center" border="1" cellspacing="1">
             <tr bgcolor="yellow">
               <td bgcolor="green">
                   <asp:GridView ID="gvDatos" runat="server">
                   </asp:GridView>
               </td>
            </tr>
        </table>        
    </form>
    


    <footer class="footer">
    <div class="copyright" style="background-color: #0d47a1;">  <div  class="auto-style1" style="background-color: #000; color: #ffffff;">
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

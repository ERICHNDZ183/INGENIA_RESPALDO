<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="PROYECTO_INGENIA.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="~/lib/twitter-bootstrap/css/bootstrap.css" rel="stylesheet"/>
    <title>PTC INGENIA</title>
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

     <nav class="navbar navbar-expand-lg bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="../INICIO.aspx">Home</a>
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
            <li><hr class="dropdown-divider"/></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"/>
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

     <form id="form1" runat="server">
         <table>
            <tr>
                <td>
                    <div>
                    <asp:Button class="boton_personalizado" ID="btnHOME" runat="server" Text="HOME" OnClick="btnHOME_Click"/>
                    <asp:Button class="boton_personalizado" ID="btnHistorial" runat="server" Text="Historial" />
                    <asp:Button class="boton_personalizado" ID="btnAgregar_cliente" runat="server" Text="Agregar cliente" OnClick="btnAgregar_cliente_Click1"/>

                    </div>
                </td>
            </tr>
         </table>
   
        <table cellspacing="1" style="background: #3aff74; border: 10px solid #18803b;" align="center">
             <tr>
               <td>
                   <asp:GridView ID="gvDatos" runat="server"  fontcolor="#ffffff">
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
</body>
</html>

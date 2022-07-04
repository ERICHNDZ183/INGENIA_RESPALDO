<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro_Usuarios.aspx.cs" Inherits="PROYECTO_INGENIA.Resgistro_Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

    <style>
        
           .centrado
    {
	    margin-left: 550px;
        margin-right: 100px;
    }
        
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
    </style>
</head>

   

<body>
    <form class="centrado" id="form" runat="server">


        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <buttom type="buttom" class="navbar-toggle" data-toglee="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </buttom>
                </div>
            </div>
        </div>

   
        <div class="card text-center"  style="width: 18rem;" margin="500px">
          <div class="card-body">
               <img src="Imagenes/LOGO.jpeg" class="rounded-3 centrado_img" alt="HTML5 ICON" width="150" height="90" />
            <h5 class="card-title">Login</h5>
            <div class="form-floating mb-3">
              <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com"/>
              <label for="floatingInput">Correo Electronico</label>
            </div>
            <div class="form-floating">
              <input type="password" class="form-control" id="floatingPassword" placeholder="Password"/>
              <label for="floatingPassword">Contraseña</label>

            </div>
              <div class="form-floating">
              <input type="password" class="form-control" id="floatingConfirmar" placeholder="Password"/>
              <label for="floatingPassword">Confirmar</label>
            </div>
          </div>
            <div>
                  <asp:Button class="btn btn-alert-success" ID="Registrar" runat="server" Text="Guardar" OnClick="Registrar_Click" />
         </div>
            </div>


    </form>



    <footer style="margin-left: 0px;" class="auto-style2">
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

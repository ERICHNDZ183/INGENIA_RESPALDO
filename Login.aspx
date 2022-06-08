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
</style>
       
</head>
<body>
    <form class="centrado" id="form1" runat="server">
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
          </div>
            <div>
                <button class="btn btn-success">Iniciar</button>
           </div>
        </div>
    </form>

    <footer  style="width:102%; margin-left: 0px; left: 2px;" class="footer">
    <div style="background-color: #000000; color: #ffffff;">
       Concepción Fuentes L3 Magisterios 93320 Poza Rica de Hidalgo, Veracuz de Ignacio de la Llave, Mexico.<br/>
       Telefono: 7828181277<br />
       ventas@grupoingenia.com.mx
    </div>
    </footer>  
</body>
</html>

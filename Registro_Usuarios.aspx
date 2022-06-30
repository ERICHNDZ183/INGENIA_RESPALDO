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
    <form id="form" runat="server">


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


        <table align="center" border="1" bordercolor="purple">
        <tr bgcolor="green">
        <td bgcolor="orange">
        <asp:Label ID="lblNombre_Cliente" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Nombre Usuario"></asp:Label>
        </td>
        <td bgcolor="lima">
        <asp:TextBox ID="txtNombre_Cliente" runat="server" Width="210px" ></asp:TextBox>
        </td>
        </tr>

        <tr bgcolor="green">
        <td bgcolor="orange">
        <asp:Label ID="lblApellido" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Apellido"></asp:Label>
        </td>
        <td bgcolor="orange">
        <asp:TextBox ID="txtApellido" runat="server" Width="210px"></asp:TextBox>
        </td>
        </tr>

            <tr bgcolor="green">
        <td bgcolor="orange">
        <asp:Label ID="lblUbicacion" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Ubicacion "></asp:Label>
        </td>
        <td bgcolor="orange">
        <asp:TextBox ID="txtUbicacion" runat="server" Width="210px"></asp:TextBox>
        </td>
        </tr>

            <tr bgcolor="green">
        <td bgcolor="orange">
        <asp:Label ID="lblCorreo" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Correo"></asp:Label>
        </td>
        <td bgcolor="orange">
        <asp:TextBox ID="txtCorreo" runat="server" Width="210px"></asp:TextBox>
        </td>
        </tr>

            <tr bgcolor="green">
        <td bgcolor="orange">
        <asp:Label ID="lblTelefono" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Telefono"></asp:Label>
        </td>
        <td bgcolor="orange">
        <asp:TextBox ID="txtTelefono" runat="server" Width="210px"></asp:TextBox>
        </td>
        </tr>

            
            <tr bgcolor="green">
        <td bgcolor="orange">
        <asp:Label ID="lblNombre_Empresa" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Nombre Empresa"></asp:Label>
        </td>
        <td bgcolor="orange">
        <asp:TextBox ID="txtNombre_Empresa" runat="server" Width="210px"></asp:TextBox>
        </td>
        </tr>

            
            <tr bgcolor="green">
        <td bgcolor="orange">
        <asp:Label ID="lblCorreo_Empresa" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Correo Empresa"></asp:Label>
        </td>
        <td bgcolor="orange">
        <asp:TextBox ID="txtCorreo_Empresa" runat="server" Width="210px"></asp:TextBox>
        </td>
        </tr>

            
            <tr bgcolor="green">
        <td bgcolor="orange">
        <asp:Label ID="lblTelefono_Empresa" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Telefono Empresa"></asp:Label>
        </td>
        <td bgcolor="orange">
        <asp:TextBox ID="txtTelefono_Empresa" runat="server" Width="210px"></asp:TextBox>
        </td>
        </tr>

        </table>
        <asp:Button class="btn-warning " ID="Guardar_Usuario" runat="server" Text="Registrar!" OnClick="Guardar_Usuario_Click" />
        <asp:Button ID="VOLVER_in" runat="server" Text="VOLVER"/>
        <asp:Button ID="btnHome" runat="server" Text="Home"/>
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

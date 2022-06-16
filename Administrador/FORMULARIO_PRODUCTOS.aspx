<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FORMULARIO_PRODUCTOS.aspx.cs" Inherits="PROYECTO_INGENIA.FORMULARIO_PRODUCTOS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PTC INGENIA</title>
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
            background-color: #1883ba;
            color: #ffffff;
        }
        table thead{
            background-color: #000  ;
            color: #ffffff;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <table align="center">
            <!-- cambia los texbox como el de aqui a bajo para probar si se guarda la infomracion como en este link   
                http://www.maestrosdelweb.com/tutorial-asp-net-acceso-a-datos-consultar-y-guardar-informacion-desde-webforms/ -->
     
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

        </table>
        <asp:Button ID="Guardar_producto" runat="server" Text="Guardar" OnClick="Guardar_producto_Click" />
        <asp:Button ID="VOLVER_IN" runat="server" Text="VOLVER" OnClick="VOLVER_IN_Click" />
        <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click"/>
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

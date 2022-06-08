<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editar_Producto.aspx.cs" Inherits="PROYECTO_INGENIA.Editar_Producto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

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
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: right;">
        <asp:Button class="boton_personalizado" ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click"/>
        <asp:Button class="boton_personalizado" ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click1"/>
        <asp:Button class="boton_personalizado" ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click"/>
        </div>

        <table style="width: 30%">
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

        
        <table>
             <tr>
               <td>
                   <asp:GridView ID="gvDatos" runat="server">
                   </asp:GridView>
               </td>
            </tr>
        </table>        
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

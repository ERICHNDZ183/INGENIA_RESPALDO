<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FORMULARIO_CLIENTES.aspx.cs" Inherits="PROYECTO_INGENIA.FORMULARIO_CLIENTES" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="Estilos/Estilo.css" rel="stylesheet" type="text/css" />
    <style>

     
    </style>  
</head>
<body>

    <!-- PRUEBA DOS-->
    <form id="form1" runat="server">
        <table align="center" border="1" bordercolor="blue">
        <tr >
        <td>
        <asp:Label ID="lblNombre_Cliente" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Nombre_Cliente"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtNombre_Cliente" runat="server" Width="210px" ></asp:TextBox>
        </td>
        </tr>

        <tr>
        <td>
        <asp:Label ID="lblApellido" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Apellido"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtApellido" runat="server" Width="210px"></asp:TextBox>
        </td>
        </tr>

            <tr>
        <td>
        <asp:Label ID="lblUbicacion" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Ubicacion "></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtUbicacion" runat="server" Width="210px"></asp:TextBox>
        </td>
        </tr>

            <tr>
        <td>
        <asp:Label ID="lblCorreo" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Correo"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtCorreo" runat="server" Width="210px"></asp:TextBox>
        </td>
        </tr>

            <tr>
        <td>
        <asp:Label ID="lblTelefono" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Telefono"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtTelefono" runat="server" Width="210px"></asp:TextBox>
        </td>
        </tr>

            
            <tr>
        <td>
        <asp:Label ID="lblNombre_Empresa" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Nombre_Empresa"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtNombre_Empresa" runat="server" Width="210px"></asp:TextBox>
        </td>
        </tr>

            
            <tr>
        <td>
        <asp:Label ID="lblCorreo_Empresa" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Correo Empresa"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtCorreo_Empresa" runat="server" Width="210px"></asp:TextBox>
        </td>
        </tr>

            
            <tr>
        <td>
        <asp:Label ID="lblTelefono_Empresa" runat="server" Font-Names="Arial" Font-Size="10pt"
        Text="Telefono Empresa"></asp:Label>
        </td>
        <td>
        <asp:TextBox ID="txtTelefono_Empresa" runat="server" Width="210px"></asp:TextBox>
        </td>
        </tr>

        </table>
        <asp:Button ID="Guardar_cliente" runat="server" Text="Guardar" OnClick="Guardar_cliente_Click" />
        <asp:Button ID="VOLVER_IN" runat="server" Text="VOLVER" OnClick="VOLVER_IN_Click"/>
        <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click"/>
        <asp:Button ID="btnEditar_Clientes" runat="server" Text="Editar Clientes" OnClick="btnEditar_Clientes_Click"/>
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

</body>
</html>

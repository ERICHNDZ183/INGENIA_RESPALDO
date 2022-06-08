<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editar_Clientes.aspx.cs" Inherits="PROYECTO_INGENIA.Editar_Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Estilos/Estilo.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 1293px;
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

        <table border="1" align="center" style="width: 30%" bordercolor="blue">
            <caption>Tabla para editar clientes</caption>
            <tr >
                <td class="style" bgcolor="purple">
                    <asp:Label ID="lblId_Cliente" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="ID CLIENTE"></asp:Label>
                </td>
                <td bgcolor="green">
                <asp:TextBox ID="txtId_Cliente" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

            <tr >
                <td class="style" bgcolor="purple">
                    <asp:Label ID="lblNombre_Cliente" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Nombre_Cliente"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="txtNombre_Cliente" runat="server" Width="205px" ></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="style" bgcolor="purple">
                    <asp:Label ID="lblApellido" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Apellido"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtApellido" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="style" bgcolor="purple">
                    <asp:Label ID="lblUbicacion" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Ubicacion"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="txtUbicacion" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="style" bgcolor="purple">
                    <asp:Label ID="lblCorreo" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Correo"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCorreo" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="style" bgcolor="purple">
                    <asp:Label ID="lblTelefono" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Telefono"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTelefono" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td class="style" bgcolor="purple">
                    <asp:Label ID="lblNombre_Empresa" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Nombre Empresa"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNombre_Empresa" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td class="style" bgcolor="purple">
                    <asp:Label ID="lblCorreo_Empresa" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Correo Empresa"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCorreo_Empresa" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td class="style" bgcolor="purple">
                    <asp:Label ID="lblTelefono_Empresa" runat="server" Font-Names="Arial" Font-Size="10pt"
                    Text="Telefono Empresa"></asp:Label>
                </td>
                <td>
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

    <footer>
    <div class="copyright" style="background-color: #0d47a1;">
    </div>
    </footer>

        <div  class="auto-style1" style="background-color: #000; color: #ffffff;">
            Concepción Fuentes L3 Magisterios 93320 Poza Rica de Hidalgo, Veracuz de Ignacio de la Llave, Mexico.<br/>
            Telefono: 7828181277<br />
            ventas@grupoingenia.com.mx
        </div>
    
</body>
</html>

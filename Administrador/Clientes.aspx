<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="PROYECTO_INGENIA.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PTC INGENIA</title>

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
         <table>
            <tr>
                <td>
                    <asp:Button class="boton_perzonalizado" ID="btnHOME" runat="server" Text="HOME" style="height: 26px" OnClick="btnHOME_Click"/>
                    <asp:Button class="boton_personalizado" ID="btnHistorial" runat="server" Text="Historial" />
                    <asp:Button class="boton_personalizado" ID="btnAgregar_cliente" runat="server" Text="Agregar cliente" OnClick="btnAgregar_cliente_Click1"/>
                </td>
            </tr>
         </table>
   
        <table style="background: #b6ff00; border: 10px solid #1883ba;">
             <tr>
               <td bgcolor="purpule">
                   <asp:GridView ID="gvDatos" runat="server" >
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

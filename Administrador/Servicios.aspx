﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Servicios.aspx.cs" Inherits="PROYECTO_INGENIA.Servicios" %>

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
    </style>
</head>
<body>
     <form id="form1" runat="server">
        
        <div>
        </div>
        <table>
             <tr>
               <td>
                   <asp:GridView ID="gvDatos" runat="server" >
                   </asp:GridView>
                   
               </td>
           </tr> 
       </table>  
        <div style="text-align: right;">
       <table>
            <tr>
                   <td>
                       <asp:Button ID="btnHOME" runat="server" Text="HOME" style="height: 26px" OnClick="btnHOME_Click" />
                       
            
            <asp:Button class="boton_personalizado" ID="btnCitas" runat="server" Text="Citas"/>
   

                   </td>
               </tr>
       </table>
           </div> 
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
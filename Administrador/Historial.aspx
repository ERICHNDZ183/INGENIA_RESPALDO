<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Historial.aspx.cs" Inherits="PROYECTO_INGENIA.Historial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
             <tr>
               <td>
                   <asp:GridView ID="gvDatos" runat="server" >
                   </asp:GridView>
               </td>
           </tr> 
       </table>

        <table>
            <tr>
                   <td>
                        <asp:Button class="boton_personalizado" ID="btnHOME" runat="server" Text="HOME" style="height: 26px" OnClick="btnHOME_Click" />
                   </td>
               </tr>
       </table>
        </div>
    </form>
</body>
</html>

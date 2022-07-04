using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROYECTO_INGENIA
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void REGISTRARSE_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro_Usuarios");
        }
    }
}
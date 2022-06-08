using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROYECTO_INGENIA
{
    public partial class Clientes : System.Web.UI.Page
    {
        private void ConsultaClientes()
        {
            SqlConnection oConn = new SqlConnection();
            oConn.ConnectionString = "Data Source=DESKTOP-0T193IE\\COMPAC;Initial Catalog=GRUPO_INGENIA;Integrated Security=True";// Data Source=DESKTOP-0T193IE\\COMPAC;Initial Catalog=GRUPO_INGENIA;Integrated Security=True
                                                                                                                                  //oConn.Open();
            SqlCommand oCmd = new SqlCommand();
            oCmd.CommandType = System.Data.CommandType.StoredProcedure;
            oCmd.Connection = oConn;
            oCmd.CommandText = "CONSULTA_CLIENTES";


            DataTable dt = new DataTable();

            SqlDataAdapter oDa = new SqlDataAdapter();
            oDa.SelectCommand = oCmd;


            try
            {

                oDa.Fill(dt);
                gvDatos.DataSource = dt;
                gvDatos.DataBind();

            }

            catch (SqlException ex)
            {
                Response.Write(ex.Message.ToString());
            }

            catch (Exception ex)
            {
                Response.Write(ex.Message.ToString());
            }

            finally
            {
                oConn.Dispose();
                oCmd.Dispose();
                oDa.Dispose();
                dt.Dispose();
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            ConsultaClientes();
        }

        protected void btnHistorial_Click(object sender, EventArgs e)
        {
            Response.Redirect("Historial.aspx");
        }

        protected void btnAgregar_cliente_Click1(object sender, EventArgs e)
        {
            Response.Redirect("FORMULARIO_CLIENTES.aspx");
        }

        protected void btnHOME_Click(object sender, EventArgs e)
        {
            Response.Redirect("../INICIO.aspx");
        }
    }
}
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
    public partial class FORMULARIO_CLIENTES : System.Web.UI.Page
    {
        private void Agrega_Cliente()
        {
            SqlConnection oConn = new SqlConnection();
            oConn.ConnectionString = "Data Source=DESKTOP-0T193IE\\COMPAC;Initial Catalog=GRUPO_INGENIA;Integrated Security=True";//Data Source=LAPTOP-J2DDBQ12\\MSSQLSERVER02;Initial Catalog=GRUPO_INGENIA;Integrated Security=True

            SqlCommand oCmd = new SqlCommand();
            oCmd.CommandType = System.Data.CommandType.StoredProcedure;
            oCmd.Connection = oConn;
            oCmd.CommandText = "CLIENTE_CREATE";

            //Paso de parametros al procedimiento almacenado
            oCmd.Parameters.Add("Nombre_Cliente", SqlDbType.NVarChar, 60);
            oCmd.Parameters["Nombre_Cliente"].Value = txtNombre_Cliente.Text;

            oCmd.Parameters.Add("Apellido", SqlDbType.NVarChar, 60);
            oCmd.Parameters["Apellido"].Value = txtApellido.Text;

            oCmd.Parameters.Add("Ubicacion", SqlDbType.NVarChar, 100);
            oCmd.Parameters["Ubicacion"].Value = txtUbicacion.Text;

            oCmd.Parameters.Add("Correo", SqlDbType.NVarChar, 100);
            oCmd.Parameters["Correo"].Value = txtCorreo.Text;

            oCmd.Parameters.Add("Telefono", SqlDbType.NVarChar, 10);
            oCmd.Parameters["Telefono"].Value = txtTelefono.Text;

            oCmd.Parameters.Add("Nombre_Empresa", SqlDbType.NVarChar, 50);
            oCmd.Parameters["Nombre_Empresa"].Value = txtNombre_Empresa.Text;

            oCmd.Parameters.Add("Correo_Empresa", SqlDbType.NVarChar, 50);
            oCmd.Parameters["Correo_Empresa"].Value = txtCorreo_Empresa.Text;

            oCmd.Parameters.Add("Telefono_Empresa", SqlDbType.NVarChar, 10);
            oCmd.Parameters["Telefono_Empresa"].Value = txtTelefono_Empresa.Text;


            DataTable dt = new DataTable();
            SqlDataAdapter oDa = new SqlDataAdapter();
            oDa.SelectCommand = oCmd;

            try
            {
                oDa.Fill(dt);
                Response.Write("Datos Almacenados Correctamente");
            }
            catch (SqlException ex)
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

        }

        protected void VOLVER_IN_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clientes.aspx");
        }

        protected void Guardar_cliente_Click(object sender, EventArgs e)
        {
            Agrega_Cliente();
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("../INICIO.aspx");
        }

        protected void btnEditar_Clientes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Editar_Clientes.aspx");
        }
    }
}
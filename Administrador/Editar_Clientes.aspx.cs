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
    public partial class Editar_Clientes : System.Web.UI.Page
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

        private void Actualiza_Cliente(int ID_CLIENTE, string NOMBRE_CLIENTE)
        {
            SqlConnection oConn = new SqlConnection();
            oConn.ConnectionString = "Data Source=DESKTOP-0T193IE\\COMPAC;Initial Catalog=GRUPO_INGENIA;Integrated Security=True";//Data Source=LAPTOP-J2DDBQ12\\MSSQLSERVER02;Initial Catalog=GRUPO_INGENIA;Integrated Security=True

            SqlCommand oCmd = new SqlCommand();
            oCmd.CommandType = System.Data.CommandType.StoredProcedure;
            oCmd.Connection = oConn;
            oCmd.CommandText = "CLIENTES_UPDATE";

            //Paso de parametros al procedimiento almacenado
            oCmd.Parameters.Add("Id_Cliente", SqlDbType.Int);
            oCmd.Parameters["Id_Cliente"].Value = Convert.ToInt32(txtId_Cliente.Text);

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

        private void Borrar_Cliente()
        {
            SqlConnection oConn = new SqlConnection();
            oConn.ConnectionString = "Data Source=DESKTOP-0T193IE\\COMPAC;Initial Catalog=GRUPO_INGENIA;Integrated Security=True";// Data Source=DESKTOP-0T193IE\\COMPAC;Initial Catalog=GRUPO_INGENIA;Integrated Security=True
            //oConn.Open();
            SqlCommand oCmd = new SqlCommand();
            oCmd.CommandType = System.Data.CommandType.StoredProcedure;
            oCmd.Connection = oConn;
            oCmd.CommandText = "CLIENTE_ID_DELETE";

            oCmd.Parameters.Add("ID_CLIENTE", SqlDbType.Int);
            oCmd.Parameters["ID_CLIENTE"].Value = Convert.ToInt32(txtId_Cliente.Text);

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
        {    //solo la primera vez
            if (!Page.IsPostBack)
            {
                ConsultaClientes();
                Response.Write("solo la primera vez cargar la pagina");
            }
            else
            {
                Response.Write("se volvio a realizar un postbakc");
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("../INICIO.aspx");
        }


        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Borrar_Cliente();
            ConsultaClientes();
        }

        protected void btnActualizar_Click1(object sender, EventArgs e)
        {
            Actualiza_Cliente(int.Parse(txtId_Cliente.Text), txtNombre_Cliente.Text);
            ConsultaClientes();
        }

      
    }
   
}
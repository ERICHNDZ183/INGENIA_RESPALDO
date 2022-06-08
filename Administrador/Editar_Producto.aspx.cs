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
    public partial class Editar_Producto : System.Web.UI.Page
    {
        private void ConsultaProductos()
        {
            SqlConnection oConn = new SqlConnection();
            oConn.ConnectionString = "Data Source=DESKTOP-0T193IE\\COMPAC;Initial Catalog=GRUPO_INGENIA;Integrated Security=True";// Data Source=DESKTOP-0T193IE\\COMPAC;Initial Catalog=GRUPO_INGENIA;Integrated Security=True
            //oConn.Open();
            SqlCommand oCmd = new SqlCommand();
            oCmd.CommandType = System.Data.CommandType.StoredProcedure;
            oCmd.Connection = oConn;
            oCmd.CommandText = "CONSULTA_PRODUCTO";

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

        private void Actualiza_Producto(int ID_PRODUCTO, string NOMBRE_PRODUCTO)
        {
                SqlConnection oConn = new SqlConnection();
                oConn.ConnectionString = "Data Source=DESKTOP-0T193IE\\COMPAC;Initial Catalog=GRUPO_INGENIA;Integrated Security=True";//Data Source=LAPTOP-J2DDBQ12\\MSSQLSERVER02;Initial Catalog=GRUPO_INGENIA;Integrated Security=True

                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = System.Data.CommandType.StoredProcedure;
                oCmd.Connection = oConn;
                oCmd.CommandText = "PRODUCTOS_UPDATE";

            //Paso de parametros al procedimiento almacenado
                oCmd.Parameters.Add("ID_PRODUCTO", SqlDbType.Int);
                oCmd.Parameters["ID_PRODUCTO"].Value = Convert.ToInt32(txtIdProducto.Text);

                oCmd.Parameters.Add("Nombre_Producto", SqlDbType.NVarChar, 50);
                oCmd.Parameters["Nombre_Producto"].Value = txtNombreProducto.Text;

                oCmd.Parameters.Add("Marca_Producto", SqlDbType.NVarChar, 30);
                oCmd.Parameters["Marca_Producto"].Value = txtMarcaProducto.Text;

                oCmd.Parameters.Add("MODELO", SqlDbType.NVarChar, 30);
                oCmd.Parameters["MODELO"].Value = txtModelo.Text;

                oCmd.Parameters.Add("Espesificaciones_Tecnicas", SqlDbType.NVarChar, 50);
                oCmd.Parameters["Espesificaciones_Tecnicas"].Value = txtEspecificaciones.Text;


                oCmd.Parameters.Add("Costo_Producto", SqlDbType.Float);
                oCmd.Parameters["Costo_Producto"].Value = Convert.ToDecimal(txtCostoProducto.Text);


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

        private void Borrar_Producto()
        {
            SqlConnection oConn = new SqlConnection();
            oConn.ConnectionString = "Data Source=DESKTOP-0T193IE\\COMPAC;Initial Catalog=GRUPO_INGENIA;Integrated Security=True";// Data Source=DESKTOP-0T193IE\\COMPAC;Initial Catalog=GRUPO_INGENIA;Integrated Security=True
            //oConn.Open();
            SqlCommand oCmd = new SqlCommand();
            oCmd.CommandType = System.Data.CommandType.StoredProcedure;
            oCmd.Connection = oConn;
            oCmd.CommandText = "PRODUCTO_ID_DELETE";

            oCmd.Parameters.Add("ID_PRODUCTO", SqlDbType.Int);
            oCmd.Parameters["ID_PRODUCTO"].Value = Convert.ToInt32(txtIdProducto.Text);

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
            if(!Page.IsPostBack)
            {
                ConsultaProductos();
            }
            else
            {
             
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("../INICIO.aspx");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Borrar_Producto();
            ConsultaProductos();
        }

        protected void btnActualizar_Click1(object sender, EventArgs e)
        {
            Actualiza_Producto(int.Parse(txtIdProducto.Text), txtNombreProducto.Text);
            ConsultaProductos();
        }
    }
}
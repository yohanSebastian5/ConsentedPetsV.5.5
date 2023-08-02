using ConsentedPets.Datos;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Datos
{
    public class ClEliminarD
    {
        private ClConexion conexion = new ClConexion();
        SqlCommand comando = new SqlCommand();

        public void mtdEliminarActividad(int idE)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EliminarActividad";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", idE);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public void mtdEliminarCategoria(int idE)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EliminarActividad";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", idE);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public void mtdEliminarCurso(int idE)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EliminarActividad";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", idE);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public void mtdEliminarHistoriaE(int idE)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EliminarHistoriaE";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", idE);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public void mtdEliminarMascota(int idE)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EliminarMascota";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", idE);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public void mtdEliminarPedido(int idE)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EliminarPedido";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", idE);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public void mtdEliminarProducto(int idE)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EliminarProducto";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", idE);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public void mtdEliminarServicioEs(int idE)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EliminarServicioEs";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", idE);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public void mtdEliminarServicioV(int idE)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EliminarServicioV";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", idE);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public void mtdEliminarUsuario(int idE)
        {
            

            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EliminarUsuario";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", idE);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public void mtdEliminarUsuarioEs(int idE, string tipo)
        {


            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EliminarUsuario" + tipo;
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", idE);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();

            conexion.CerrarConexion();
        }


    }
}
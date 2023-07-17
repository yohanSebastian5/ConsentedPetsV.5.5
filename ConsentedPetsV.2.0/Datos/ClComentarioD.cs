using ConsentedPets.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Datos
{
    public class ClComentarioD
    {
        private ClConexion conexion = new ClConexion();
        SqlCommand comando = new SqlCommand();
        public void mtdCOmentario(ClComentarioE objE)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistroComentrario";
            comando.CommandType = CommandType.StoredProcedure;

            // Agregar los parámetros al comando
            comando.Parameters.AddWithValue("@Comentario", objE.comentario);
            comando.Parameters.AddWithValue("@calificacion", objE.calificacion);
            comando.Parameters.AddWithValue("@idUsuario", objE.idUsuario);
            comando.Parameters.AddWithValue("@idVeterinaria", objE.idVeterinaria);
            comando.Parameters.AddWithValue("@idTienda", objE.idTienda);
            comando.Parameters.AddWithValue("@idEscuela", objE.idEscuela);
            
            // Ejecutar el comando
            comando.ExecuteNonQuery();

            // Limpiar los parámetros y cerrar la conexión
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }

    }
}
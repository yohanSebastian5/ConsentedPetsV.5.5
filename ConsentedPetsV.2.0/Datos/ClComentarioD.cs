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
            comando.CommandText = "RegistroComentario";
            comando.CommandType = CommandType.StoredProcedure;

            // Agregar los parámetros al comando
            comando.Parameters.AddWithValue("@Comentario", objE.comentario);
            comando.Parameters.AddWithValue("@calificacion", objE.calificacion);
            comando.Parameters.AddWithValue("@idUsuario", objE.idUsuario);
            comando.Parameters.AddWithValue("@idVeterinaria", (object) objE.idVeterinaria);
            comando.Parameters.AddWithValue("@idTienda",(object) objE.idTienda);
            comando.Parameters.AddWithValue("@idEscuela",(object) objE.idEscuela ?? DBNull.Value);
            
            // Ejecutar el comando
            comando.ExecuteNonQuery();

            // Limpiar los parámetros y cerrar la conexión
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        //public List<ClVentaE> mtdListar()
        //{
        //    SqlCommand Listar = objSQL.mtdProcesoAlmacenado("ListaVenta");
        //    List<ClVentaE> Lista = new List<ClVentaE>();
        //    ClVentaE obDatos = null;
        //    SqlDataReader rd = Listar.ExecuteReader();
        //    while (rd.Read())
        //    {
        //        obDatos = new ClVentaE();
        //        obDatos.idVenta = rd.GetInt32(0);
        //        obDatos.Codigo = rd.GetString(1);
        //        obDatos.Fecha = rd.IsDBNull(2) ? null : rd.GetString(2); ;
        //        obDatos.Estado = rd.GetString(3);
        //        obDatos.TotalVen = rd.IsDBNull(4) ? null : rd.GetString(4); ;
        //        obDatos.idCliente = rd.IsDBNull(5) ? (int?)null : rd.GetInt32(5);
        //        obDatos.idPersonal = rd.IsDBNull(6) ? (int?)null : rd.GetInt32(6);
        //        obDatos.idTipoVenta = rd.IsDBNull(7) ? (int?)null : rd.GetInt32(7);
        //        Lista.Add(obDatos);
        //    }
        //    return Lista;
        //}

    }
}
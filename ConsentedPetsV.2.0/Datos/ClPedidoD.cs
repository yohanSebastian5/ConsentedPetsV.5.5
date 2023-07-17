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
    public class ClPedidoD
    {
        private ClConexion conexion = new ClConexion();
        SqlCommand comando = new SqlCommand();
       
        public void mtdGuardarPedido(ClPedidoE objDatos)
        {

            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistrarPedido";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@nombre", objDatos.name);
            comando.Parameters.AddWithValue("@descripcion", objDatos.message);
            comando.Parameters.AddWithValue("@fechaPedido", objDatos.fecha);
            comando.Parameters.AddWithValue("@idUsuario", objDatos.idUsuario);
            comando.Parameters.AddWithValue("@idTienda", objDatos.idTienda);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();

        }
    }
}
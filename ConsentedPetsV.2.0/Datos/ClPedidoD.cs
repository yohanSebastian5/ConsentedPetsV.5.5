using ConsentedPets.Datos;
using ConsentedPets.Entidades;
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
            comando.Parameters.AddWithValue("@estado", objDatos.estado);
            comando.Parameters.AddWithValue("@idUsuario", objDatos.idUsuario);
            comando.Parameters.AddWithValue("@idTienda", objDatos.idTienda);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();

        }

        public List<ClPedidoE> mtdPedido(int idUsuario)
        {
            string sql = "select * from PedidosC inner join Tienda on PedidosC.idTienda=Tienda.idTienda where idUsuario = '" + idUsuario + "'";

            ClProcesarSQL objSql = new ClProcesarSQL();
            DataTable tblDataMascota = objSql.mtdSelectDesc(sql);

            List<ClPedidoE> listaMascota = new List<ClPedidoE>();

            for (int i = 0; i < tblDataMascota.Rows.Count; i++)
            {
                ClPedidoE objDatosMascota = new ClPedidoE();
                objDatosMascota.idPedidosC = int.Parse(tblDataMascota.Rows[i]["idPedidosC"].ToString());
                objDatosMascota.name = tblDataMascota.Rows[i]["nombre"].ToString();
                objDatosMascota.message = tblDataMascota.Rows[i]["descripcion"].ToString();
                objDatosMascota.fecha = tblDataMascota.Rows[i]["fechaPedido"].ToString();
                objDatosMascota.estado = tblDataMascota.Rows[i]["estado"].ToString();
                objDatosMascota.name2 = tblDataMascota.Rows[i]["nombre1"].ToString();
                listaMascota.Add(objDatosMascota);
            }
            return listaMascota;
        }
    }
}
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
    public class ClProductoD
    {
        public List<CLProductoE> mtdListarCategoria(int id)
        {
            string consulta = "select * from CategoriaPS where idTienda="+id;
            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable table = SQL.mtdSelectDesc(consulta);
            List<CLProductoE> lista = new List<CLProductoE>();
            for (int i = 0; i < table.Rows.Count; i++)
            {
                CLProductoE objE = new CLProductoE();
                objE.nombreC = table.Rows[i]["nombre"].ToString();
                objE.idCategoria = int.Parse(table.Rows[i]["idCategoriaPS"].ToString());
                objE.descripcionC = table.Rows[i]["descripcion"].ToString();
                lista.Add(objE);

            }
            return lista;

        }
        public void mtdRegistrarProducto(CLProductoE objE)
        {
            ClConexion conexion = new ClConexion();
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistrarProducto";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@nombre",objE.nombreP);
            comando.Parameters.AddWithValue("@descripcion",objE.descripcionP);
            comando.Parameters.AddWithValue("@foto",objE.foto);
            comando.Parameters.AddWithValue("@precio",objE.precio);
            comando.Parameters.AddWithValue("@idCategoria",objE.idCategoria);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public void mtdRegistrarCategoria(CLProductoE objE)
        {
            ClConexion conexion = new ClConexion();
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistrarCategoria";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@nombre", objE.nombreC);
            comando.Parameters.AddWithValue("@descripcion", objE.descripcionC);
            comando.Parameters.AddWithValue("@idEscuela", objE.idTienda);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public List<ClMascotaE> mtdListarMascota(int idTienda)
        {
            string sql = "select * from Mascota where idTienda = '" + idTienda + "'";
            //SELECT idMascota, nombre FROM Mascota WHERE idUsuario = @idUsuario
            ClProcesarSQL objSql = new ClProcesarSQL();
            DataTable tblDataMascota = objSql.mtdSelectDesc(sql);

            List<ClMascotaE> listaMascota = new List<ClMascotaE>();

            for (int i = 0; i < tblDataMascota.Rows.Count; i++)
            {
                ClMascotaE objDatosMascota = new ClMascotaE();
                objDatosMascota.idMascota = int.Parse(tblDataMascota.Rows[i]["idMascota"].ToString());
                objDatosMascota.nombre = tblDataMascota.Rows[i]["nombre"].ToString();
                objDatosMascota.especie = tblDataMascota.Rows[i]["especie"].ToString();
                objDatosMascota.raza = tblDataMascota.Rows[i]["raza"].ToString();
                objDatosMascota.genero = tblDataMascota.Rows[i]["genero"].ToString();
                objDatosMascota.edad = tblDataMascota.Rows[i]["edad"].ToString();
                objDatosMascota.foto = tblDataMascota.Rows[i]["foto"].ToString();
                objDatosMascota.condicionMedica = tblDataMascota.Rows[i]["condicionMedica"].ToString();
                objDatosMascota.precio = float.Parse(tblDataMascota.Rows[i]["precio"].ToString());
                objDatosMascota.idTienda = int.Parse(tblDataMascota.Rows[i]["idTienda"].ToString());
                listaMascota.Add(objDatosMascota);
            }
            return listaMascota;

        }


    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using ConsentedPets.Entidades;

namespace ConsentedPets.Datos
{
    public class ClMascotaD
    {
        private ClConexion conexion = new ClConexion();
        SqlDataReader leer;
        DataTable tabla = new DataTable();
        SqlCommand comando = new SqlCommand();

        public void mtdRegistrar(string nombre, string especie, string raza,string edad ,string genero, string foto,string condicion, int idUsuario,int idVeterinaria,int precio= 0)
        {

            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistrarMascota";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@nombre", nombre);
            comando.Parameters.AddWithValue("@especie", especie);
            comando.Parameters.AddWithValue("@raza", raza);
            comando.Parameters.AddWithValue("@edad", edad);
            comando.Parameters.AddWithValue("@genero", genero);
            comando.Parameters.AddWithValue("@foto", foto);
            comando.Parameters.AddWithValue("@condicionMedica", condicion);
            comando.Parameters.AddWithValue("@idUsuario", idUsuario);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }


        public void mtdRegistrarMascotaPD(string nombre, string especie, string raza, string edad, string genero, string foto, string condicion, int idTienda, int precio )
        {
            SqlCommand comando = new SqlCommand();
            conexion.AbrirConexion();
            comando.CommandText = "RegistrarMascotaPS";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@nombre", nombre);
            comando.Parameters.AddWithValue("@especie", especie);
            comando.Parameters.AddWithValue("@raza", raza);
            comando.Parameters.AddWithValue("@edad", edad);
            comando.Parameters.AddWithValue("@genero", genero);
            comando.Parameters.AddWithValue("@foto", foto);
            comando.Parameters.AddWithValue("@condicionMedica", condicion);
            comando.Parameters.AddWithValue("@precio", precio);
            comando.Parameters.AddWithValue("@idTienda", idTienda);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();

        }
        public List<ClMascotaE> mtdListarMascota(int idUsuario)
        {
            string sql = "select * from Mascota where idUsuario = '"+idUsuario+"'";
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
                //objDatosMascota.precio = float.Parse(tblDataMascota.Rows[i]["precio"].ToString());
                objDatosMascota.idUsuario = int.Parse(tblDataMascota.Rows[i]["idUsuario"].ToString());
                //objDatosMascota.idTienda = int.Parse(tblDataMascota.Rows[i]["idTienda"].ToString());
                listaMascota.Add(objDatosMascota);
            }
            return listaMascota;

        }

        public List<ClMascotaE> mtdMascotaVenta(int idTienda)
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
                //objDatosMascota.nombre = tblDataMascota.Rows[i]["nombre"].ToString();
                objDatosMascota.especie = tblDataMascota.Rows[i]["especie"].ToString();
                objDatosMascota.raza = tblDataMascota.Rows[i]["raza"].ToString();
                objDatosMascota.genero = tblDataMascota.Rows[i]["genero"].ToString();
                objDatosMascota.edad = tblDataMascota.Rows[i]["edad"].ToString();
                objDatosMascota.foto = tblDataMascota.Rows[i]["foto"].ToString();
                //objDatosMascota.condicionMedica = tblDataMascota.Rows[i]["condicionMedica"].ToString();
                objDatosMascota.precio = int.Parse(tblDataMascota.Rows[i]["precio"].ToString());
                //objDatosMascota.idUsuario = int.Parse(tblDataMascota.Rows[i]["idUsuario"].ToString());
                objDatosMascota.idTienda = int.Parse(tblDataMascota.Rows[i]["idTienda"].ToString());
                listaMascota.Add(objDatosMascota);
            }
            return listaMascota;

        }


    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace ConsentedPets.Datos
{
    public class ClProcesarSQL
    {
        public DataTable mtdSelectDesc(string consulta)
        {
            ClConexion objConexion = new ClConexion();
            SqlDataAdapter adaptador = new SqlDataAdapter(consulta, objConexion.AbrirConexion());
            DataTable tblDatos = new DataTable();
            adaptador.Fill(tblDatos);
            objConexion.CerrarConexion().Close();
            return tblDatos;
        }

        //Ejecuta SQL Insert,Update,Delete en forma conectada y retorna entero
        public int mtdIUDConect(string consulta)
        {
            ClConexion objConexion = new ClConexion();
            SqlCommand comando = new SqlCommand(consulta,
            objConexion.AbrirConexion());
            int registros = comando.ExecuteNonQuery();
            objConexion.CerrarConexion().Close();
            return registros;
        }
        public int mtdVerificarExistenciaCorreo(string consul)
        {
            ClConexion obConexion = new ClConexion();
            SqlCommand comando = new SqlCommand(consul, obConexion.AbrirConexion());
            int verificar = (int)comando.ExecuteScalar();
            obConexion.CerrarConexion().Close();
            return verificar;
        }
    }
}
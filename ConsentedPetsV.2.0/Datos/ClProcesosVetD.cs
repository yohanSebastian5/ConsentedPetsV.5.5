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
    public class ClProcesosVetD
    {
        public List<ClProcesosVetE> mtdProcesos(int idVeterinaria)
        {
           
            string consul = "select * from HistoriaE where idVeterinaria = '"+idVeterinaria+"'";
            ClProcesarSQL sql = new ClProcesarSQL();
            
            DataTable tabla = sql.mtdSelectDesc(consul);
            List<ClProcesosVetE> lista = new List<ClProcesosVetE>();

            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                ClProcesosVetE objProcesos = new ClProcesosVetE();
                objProcesos.idHistorialE = int.Parse(tabla.Rows[i]["idHistorialE"].ToString());
                objProcesos.nombre = tabla.Rows[i]["nombre"].ToString();
                objProcesos.descripcion = tabla.Rows[i]["descripcion"].ToString();
                objProcesos.foto = tabla.Rows[i]["foto"].ToString();
                objProcesos.idVeterinaria = int.Parse(tabla.Rows[i]["idVeterinaria"].ToString());
                //objProcesos.idEscuela = int.Parse(tabla.Rows[i]["idEscuela"].ToString());
                lista.Add(objProcesos);
            }
            return lista;
        }
        private ClConexion conexion = new ClConexion();
        public void mtdRegistrarS(ClProcesosVetE objservicioE)
        {

            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistrarProceso";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@descripcion", objservicioE.descripcion);
            comando.Parameters.AddWithValue("@nombre", objservicioE.nombre);
            comando.Parameters.AddWithValue("@idVeterinaria", objservicioE.idVeterinaria);
            comando.Parameters.AddWithValue("@foto", objservicioE.foto);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();

        }
    }
}
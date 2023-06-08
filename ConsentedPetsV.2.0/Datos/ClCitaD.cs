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
    public class ClCitaD
    {
        private ClConexion conexion = new ClConexion();
        SqlCommand comando = new SqlCommand();
        public void mtdCita(int mascota, string fechaCita, string horaCita, string estado)
        {
            
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistarCita";
            comando.CommandType = CommandType.StoredProcedure;

            // Agregar los parámetros al comando
            comando.Parameters.AddWithValue("@fecha", fechaCita);
            comando.Parameters.AddWithValue("@hora", horaCita);
            comando.Parameters.AddWithValue("@estado", estado);
            comando.Parameters.AddWithValue("@idMascota", mascota);

            // Ejecutar el comando
            comando.ExecuteNonQuery();

            // Limpiar los parámetros y cerrar la conexión
            comando.Parameters.Clear();
            conexion.CerrarConexion();

        }

        public List<ClCitaE> mtdListar( int id = 0,int tipo=0)
        {
            string consulta = "";
            if (tipo==0)
            {
                 consulta = "select * from CitaV inner join HistorialV on CitaV.idCitaV= HistorialV.idCitaV inner join ServicioV on ServicioV.idServicioV=HistorialV.idServicioV  where ServicioV.idVeterinaria='" + id + "' and estado!='Activo'";

            }
            else if (tipo==1)
            {
                 consulta = "select * from CitaV inner join HistorialV on CitaV.idCitaV= HistorialV.idCitaV inner join ServicioV on ServicioV.idServicioV=HistorialV.idServicioV  where ServicioV.idVeterinaria='" + id + "' and estado='Activo'";

            }
            else if (tipo==2)
            {
                consulta = "select * from CitaV inner join Mascota on CitaV.idMascota=Mascota.idMascota where Mascota.idUsuario='"+id+"'";
            }
            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable tblVeterinaria = SQL.mtdSelectDesc(consulta);
            List<ClCitaE> lista = new List<ClCitaE>();
            for (int i = 0; i < tblVeterinaria.Rows.Count; i++)
            {
                ClCitaE objVet = new ClCitaE();
                objVet.idcita = int.Parse(tblVeterinaria.Rows[0]["idCitaV"].ToString());
                objVet.FechaCita = tblVeterinaria.Rows[0]["fecha"].ToString();
                objVet.HoraCita = tblVeterinaria.Rows[0]["hora"].ToString();
                objVet.Estado = tblVeterinaria.Rows[0]["estado"].ToString();
                objVet.nombre = tblVeterinaria.Rows[0]["nombre"].ToString();
                if (tipo!=2)
                {
                    objVet.descripcion = tblVeterinaria.Rows[0]["descripcion1"].ToString();
                    objVet.precio = tblVeterinaria.Rows[0]["precio1"].ToString();
                }

                lista.Add(objVet);
            }

            return lista;
        }



        public void mtdHistorial (int idServicio, int idUsuario, int precio, string descripcion, int idCita)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistarHistorialIV";
            comando.CommandType = CommandType.StoredProcedure;

            // Agregar los parámetros al comando
            comando.Parameters.AddWithValue("@idServicioV", idServicio);
            comando.Parameters.AddWithValue("@idCitaV", idCita);
            comando.Parameters.AddWithValue("@idUsuario", idUsuario);
            comando.Parameters.AddWithValue("@precio", precio);
            comando.Parameters.AddWithValue("@descripcion", descripcion);

            // Ejecutar el comando
            comando.ExecuteNonQuery();

            // Limpiar los parámetros y cerrar la conexión
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }

    }
}

using ConsentedPets.Datos;
using ConsentedPets.Entidades;
using ConsentedPets.Vista.PerfilesRol.Administrador.Veterinaria;
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
            comando.Parameters.AddWithValue("@idVeterinaria", objE.idVeterinaria);
            comando.Parameters.AddWithValue("@idTienda", objE.idTienda);
            comando.Parameters.AddWithValue("@idEscuela", objE.idEscuela);

            // Ejecutar el comando
            comando.ExecuteNonQuery();

            // Limpiar los parámetros y cerrar la conexión
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public List<ClComentarioE> mtdListar(int seccion, int id)
        {
            string establecimiento = "";
            if (seccion == 1)
            {
                establecimiento = "idVeterinaria";
            }
            else if (seccion == 2)
            {
                establecimiento = "idTienda";
            }
            else if (seccion == 3)
            {
                establecimiento = "idEscuela";
            }

            string consulta = "select * from Usuario inner join Valoracion on Valoracion.idUsuario = Usuario.idUsuario where Valoracion." + establecimiento + " = '" + id + "'";

            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable tabla = SQL.mtdSelectDesc(consulta);
            List<ClComentarioE> lista = new List<ClComentarioE>();

            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                ClComentarioE objComentario = new ClComentarioE();
                objComentario.idValoracion = int.Parse(tabla.Rows[i]["idValoracion"].ToString());
                objComentario.nombre = tabla.Rows[i]["nombre"].ToString();
                objComentario.apellido = tabla.Rows[i]["apellido"].ToString();
                objComentario.foto = tabla.Rows[i]["foto"].ToString();
               
                objComentario.calificacion = int.Parse(tabla.Rows[i]["calificacion"].ToString());
                objComentario.comentario = tabla.Rows[i]["Comentario"].ToString();



                lista.Add(objComentario);
                
            }
            
            return lista;
        }


    }
}
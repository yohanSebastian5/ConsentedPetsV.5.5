using ConsentedPets.Datos;
using ConsentedPets.Entidades;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Xml.Linq;

namespace ConsentedPetsV._2._0.Datos
{
    public class ClServicioVetD
    {
        private ClConexion conexion = new ClConexion();
        public List<ClServicioVeterinariaE> mtdListar( int idVeterinaria)
        {


            string consulta = "select * from ServicioV where idVeterinaria = '"+idVeterinaria+"'";
            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable tblVeterinaria = SQL.mtdSelectDesc(consulta);
            List<ClServicioVeterinariaE> listaProductos = new List<ClServicioVeterinariaE>();
            for (int i = 0; i < tblVeterinaria.Rows.Count; i++)
            {
                ClServicioVeterinariaE objVet = new ClServicioVeterinariaE();
                objVet.idServicioV = int.Parse(tblVeterinaria.Rows[i]["idServicioV"].ToString());
                objVet.nombre = tblVeterinaria.Rows[i]["nombre"].ToString();
                objVet.foto = tblVeterinaria.Rows[i]["foto"].ToString();
                objVet.descripcion = tblVeterinaria.Rows[i]["descripcion"].ToString();
                objVet.precio = int.Parse(tblVeterinaria.Rows[i]["precio"].ToString());
                objVet.idVeterinaria = int.Parse(tblVeterinaria.Rows[i]["idVeterinaria"].ToString());
               
                listaProductos.Add(objVet);
            }
            return listaProductos;
        }
        public void mtdRegistrarS(ClServicioVeterinariaE objservicioE)
        {
       
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistrarServicio";

            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@descripcion", objservicioE.descripcion);
            comando.Parameters.AddWithValue("@nombre", objservicioE.nombre);
            comando.Parameters.AddWithValue("@precio",objservicioE.precio );
            comando.Parameters.AddWithValue("@idVeterinaria", objservicioE.idVeterinaria);
            comando.Parameters.AddWithValue("@idServicioV", objservicioE.idServicioV);
            comando.Parameters.AddWithValue("@foto", objservicioE.foto);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();

        }
    }
    
}
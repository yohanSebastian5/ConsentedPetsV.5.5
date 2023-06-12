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
    public class ClProcesosEscuela
    {
        public List<ClServicioVeterinariaE> mtdListar(int id,string tipo="")
        {
            string consulta = "";
            if (tipo == "")
            {
                consulta = "select * from ServicioEs where idEscuela = '" + id + "'";
            }
            else
            {
                consulta = "select * from ServicioEs where foto='" + tipo + "'";
            }
     
            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable tbl = SQL.mtdSelectDesc(consulta);
            List<ClServicioVeterinariaE> listaProductos = new List<ClServicioVeterinariaE>();
            for (int i = 0; i < tbl.Rows.Count; i++)
            {
                ClServicioVeterinariaE objVet = new ClServicioVeterinariaE();
                objVet.idServicioV = int.Parse(tbl.Rows[i]["idServicioE"].ToString());
                objVet.nombre = tbl.Rows[i]["nombre"].ToString();
                objVet.foto = tbl.Rows[i]["foto"].ToString();
                objVet.idVeterinaria = int.Parse(tbl.Rows[i]["idEscuela"].ToString());

                listaProductos.Add(objVet);
            }
            return listaProductos;
        }
        private ClConexion conexion = new ClConexion();
        public void mtdRegistrarS(ClServicioVeterinariaE objE)
        {

            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistrarServicioE";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@nombre", objE.nombre);
            comando.Parameters.AddWithValue("@foto", objE.foto);
            comando.Parameters.AddWithValue("@idEscuela", objE.idVeterinaria);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();

        }
        public void mtdRegistrarCurso(ClServicioVeterinariaE objE)
        {

            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistrarCursoE";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@nombre", objE.nombre);
            comando.Parameters.AddWithValue("@descripcion", objE.descripcion);
            comando.Parameters.AddWithValue("@valor", objE.precio);
            comando.Parameters.AddWithValue("@foto", objE.foto);
            comando.Parameters.AddWithValue("@idServicioE", objE.idServicioV);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();

        }
        public List<ClMatriculaE> mtdListarMatriculas(int id)
        {
            string consulta = "select * from Matricula  inner join Curso on  Matricula.idCursoE =Curso.idCursoE  inner join ServicioEs on Curso.idServicioE= ServicioEs.idServicioE inner join Registro on Matricula.idRegistro= Registro.idRegistro inner join Mascota on Registro.idMascota= Mascota.idMascota where Registro.idEscuela="+id+""; 
            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable tbl = SQL.mtdSelectDesc(consulta);
            List<ClMatriculaE> listaProductos = new List<ClMatriculaE>();
            for (int i = 0; i < tbl.Rows.Count; i++)
            {
                ClMatriculaE objMatricula = new ClMatriculaE();
                objMatricula.precioTotal = tbl.Rows[i]["precioTotal"].ToString();
                objMatricula.nombre = tbl.Rows[i]["nombre"].ToString();
                objMatricula.fechaMatricula = tbl.Rows[i]["fechaMatricula"].ToString();
                objMatricula.mascota = tbl.Rows[i]["nombre2"].ToString();
                objMatricula.especie = tbl.Rows[i]["especie"].ToString();
                listaProductos.Add(objMatricula);
            }
            return listaProductos;
        }
    }
}
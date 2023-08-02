using ConsentedPets.Entidades;
using ConsentedPets.Vista.PerfilesRol.Administrador.Veterinaria;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;

namespace ConsentedPets.Datos
{
    public class ClEstablecimientoD
    {
        public List<ClEstablecimientoE> mtdVeterinaria(int idVeterinaria)
        {
            string consul = "select * from Veterinaria where idVeterinaria = '" + idVeterinaria + "'";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tabla = sql.mtdSelectDesc(consul);
            List<ClEstablecimientoE> lista = new List<ClEstablecimientoE>();

            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                ClEstablecimientoE objDato = new ClEstablecimientoE();
                objDato.id = int.Parse(tabla.Rows[i]["idVeterinaria"].ToString());
                objDato.foto = tabla.Rows[i]["foto"].ToString();
                objDato.nombre = tabla.Rows[i]["nombre"].ToString();
                lista.Add(objDato);
            }
            return lista;
        }

        public ClEstablecimientoE mtdGmail(int idTienda)
        {
            string consul = "select * from Tienda where idTienda = " + idTienda + "";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tabla = sql.mtdSelectDesc(consul);
            ClEstablecimientoE objDato = new ClEstablecimientoE();
            objDato.id = int.Parse(tabla.Rows[0]["idTienda"].ToString());
            objDato.email = tabla.Rows[0]["email"].ToString();
            return objDato;
          

        }

        public ClEstablecimientoE mtdGmailEs(int idEscuela)
        {
            string consul = "select * from Escuela where IdEscuela = " + idEscuela + "";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tabla = sql.mtdSelectDesc(consul);
            ClEstablecimientoE objDato = new ClEstablecimientoE();
            objDato.id = int.Parse(tabla.Rows[0]["IdEscuela"].ToString());
            objDato.email = tabla.Rows[0]["email"].ToString();
            return objDato;


        }


        public ClEstablecimientoE mtdListaDatoEs(int idEscuela)
        {
            string consul = "select * from Escuela where IdEscuela = " + idEscuela + "";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tabla = sql.mtdSelectDesc(consul);
            ClEstablecimientoE objDato = new ClEstablecimientoE();
            objDato.id = int.Parse(tabla.Rows[0]["idTienda"].ToString());
            objDato.email = tabla.Rows[0]["email"].ToString();
            objDato.nombre = tabla.Rows[0]["nombre"].ToString();
            return objDato;


        }

        public void mtdlistarEscuela()
        {

        }

        private ClConexion conexion = new ClConexion();
        SqlDataReader leer;
        DataTable tabla = new DataTable();
        SqlCommand comando = new SqlCommand();


        public void mtdRegistrar(string nombre, string direccion, string telefono, string email, string foto, int tipo)
        {
            string tipoE = "";
            if (tipo == 1)
            {
                tipoE = "Veterinaria";
            }
            else if (tipo == 2)
            {
                tipoE = "PetShop";
            }
            else
            {
                tipoE = "EscuelaCanina";
            }

            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "Insertar" + tipoE;
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@nombre", nombre);
            comando.Parameters.AddWithValue("@direccion", direccion);
            comando.Parameters.AddWithValue("@telefono", telefono);
            comando.Parameters.AddWithValue("@email", email);
            comando.Parameters.AddWithValue("@foto", foto);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public List<ClEstablecimientoE> mtdListar()
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "MostrarEst";
            comando.CommandType = CommandType.StoredProcedure;
            leer = comando.ExecuteReader();
            ClEstablecimientoE obDatos = null;
            List<ClEstablecimientoE> list = new List<ClEstablecimientoE>();
            while (leer.Read())
            {
                obDatos = new ClEstablecimientoE();
                obDatos.id = leer.GetInt32(0);
                obDatos.nombre = leer.GetString(1);
                list.Add(obDatos);
            }
            conexion.CerrarConexion();
            return list;

        }
        public void mtdRegistrarUsuarioRol(int idUsu, int idVeter, string establecimiento = "Veterinaria")
        {

            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistrarUsuario" + establecimiento;
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@idUsuario", idUsu);
            comando.Parameters.AddWithValue("@id" + establecimiento, idVeter);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public void mtdEliminarE(int idE, int tipo)
        {
            string establecimiento = "";

            if (tipo==1)

            if (idT == 1)

            {
               establecimiento = "Veterinaria";
            }
            else if (tipo==2)
            {
                establecimiento = "Tienda";
            }
            else if (tipo==3)
            {
                establecimiento = "Escuela";
            }



            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "Eliminar" + establecimiento;
            comando.CommandType = CommandType.StoredProcedure;

            comando.Parameters.AddWithValue("@id" ,idE);

            comando.Parameters.AddWithValue("@idUsuario", establecimiento);
            comando.Parameters.AddWithValue("@id" + establecimiento, establecimiento);

            comando.ExecuteNonQuery();
            comando.Parameters.Clear();

            comando.CommandText = "Eliminar" + establecimiento+"Usuario";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", idE);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();


            conexion.CerrarConexion();
        }
        public ClEstablecimientoE mtdListar(string foto = "", string establecimiento = "Veterinaria", int id = 0, int tipo = 0)
        {
            string consulta = "";
            if (tipo == 0)
            {
                consulta = "select * from " + establecimiento + " where foto='" + foto + "'";
            }
            else if (tipo == 1)
            {
                consulta = "select * from " + establecimiento + " where id" + establecimiento + "='" + id + "'";
            }

            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable tblVeterinaria = SQL.mtdSelectDesc(consulta);
            ClEstablecimientoE objVet = new ClEstablecimientoE();
            objVet.id = int.Parse(tblVeterinaria.Rows[0]["id" + establecimiento].ToString());
            objVet.nombre = tblVeterinaria.Rows[0]["nombre"].ToString();
            objVet.direccion = tblVeterinaria.Rows[0]["direccion"].ToString();
            objVet.telefono = tblVeterinaria.Rows[0]["telefono"].ToString();
            objVet.email = tblVeterinaria.Rows[0]["email"].ToString();
            objVet.foto = tblVeterinaria.Rows[0]["foto"].ToString();
            return objVet;
        }
        public void mtdActualizar(ClEstablecimientoE objE, string tipo = "")
        {

            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EditarEstablecimiento" + tipo;
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", objE.id);
            comando.Parameters.AddWithValue("@nombre", objE.nombre);
            comando.Parameters.AddWithValue("@telefono", objE.telefono);
            comando.Parameters.AddWithValue("@email", objE.email);
            comando.Parameters.AddWithValue("@foto", objE.foto);
            comando.Parameters.AddWithValue("@direccion", objE.direccion);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();

        }
        public void mtdEliminar(string tabla, int id)
        {
            string consulta = "delete from " + tabla + "where id" + tabla + "=" + id;




        }

        public List<ClUsuarioE> mtdUsuariosEscuela (int idEscuela)
        {
            string consul = "SELECT Usuario.* FROM Usuario inner JOIN UsuarioEscuela ON Usuario.idUsuario = UsuarioEscuela.idUsuario WHERE UsuarioEscuela.IdEscuela  = '" + idEscuela + "'";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tabla = sql.mtdSelectDesc(consul);
            List<ClUsuarioE> lista = new List<ClUsuarioE>();

            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                ClUsuarioE objDato = new ClUsuarioE();
                objDato.idUsuario = int.Parse(tabla.Rows[i]["idUsuario"].ToString());
               
                objDato.email = tabla.Rows[i]["email"].ToString();
                lista.Add(objDato);
            }
            return lista;
        }






    }
}
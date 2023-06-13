﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using ConsentedPets.Entidades;
using System.Runtime.Remoting.Messaging;
using static System.Collections.Specialized.BitVector32;
using ConsentedPets.Vista.PerfilesRol.Administrador.Veterinaria;

namespace ConsentedPets.Datos
{
    public class ClUsuarioD
    {
        private ClConexion conexion = new ClConexion();
        SqlDataReader leer;
        DataTable tabla = new DataTable();
        SqlCommand comando = new SqlCommand();

        public void mtdRegistrar(string documento ,string nombre, string apellido, string direccion, string telefono, string email, string foto, string genero, string contraseña)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistrarUsuarios";

            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@documento", documento);
            comando.Parameters.AddWithValue("@nombre", nombre);
            comando.Parameters.AddWithValue("@apellido", apellido);
            comando.Parameters.AddWithValue("@telefono", telefono);
            comando.Parameters.AddWithValue("@email", email);
            comando.Parameters.AddWithValue("@foto", foto);
            comando.Parameters.AddWithValue("@direccion", direccion);
            comando.Parameters.AddWithValue("@genero", genero);
            comando.Parameters.AddWithValue("@contraseña", contraseña);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }

        public void mtdActualizar(int id, string nombre, string apellido, string direccion, string telefono, string email, string foto, string genero, string contraseña)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EditarUsuarios";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@nombre", nombre);
            comando.Parameters.AddWithValue("@apellido", apellido);
            comando.Parameters.AddWithValue("@direccion", direccion);
            comando.Parameters.AddWithValue("@telefono", telefono);
            comando.Parameters.AddWithValue("@email", email);
            comando.Parameters.AddWithValue("@foto", foto);
            comando.Parameters.AddWithValue("@genero", genero);
            comando.Parameters.AddWithValue("@contraseña", contraseña);
            comando.Parameters.AddWithValue("@id", id);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();



            conexion.CerrarConexion();
        }
        public void mtdActualizarEmpleado(ClUsuarioE objUsuE)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "ActualizarUsuario";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@especializacion", objUsuE.especializacion);
            comando.Parameters.AddWithValue("@experiencia", objUsuE.experiencia);
            comando.Parameters.AddWithValue("@profesion", objUsuE.profesion);
            comando.Parameters.AddWithValue("@idUsuario", objUsuE.idUsuario);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public List<ClUsuarioE> mtdMostrar(int idUsuario)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "MostrarUsuario";
            comando.Parameters.AddWithValue("idUsuario", idUsuario);
            comando.CommandType = CommandType.StoredProcedure;
            leer = comando.ExecuteReader();
            List<ClUsuarioE> listaUsuario = new List<ClUsuarioE>();
            ClUsuarioE objDatos = null;
            while (leer.Read())
            {
                objDatos = new ClUsuarioE();
                objDatos.idUsuario = leer.GetInt32(0);
                objDatos.nombre = leer.GetString(1);
                objDatos.apellido = leer.GetString(2);
                objDatos.telefono = leer.GetString(3);
                objDatos.email = leer.GetString(4);
                objDatos.foto = leer.GetString(5);
                objDatos.direccion = leer.GetString(6);
                objDatos.genero = leer.GetString(7);
                objDatos.contraseña = leer.GetString(8);
                listaUsuario.Add(objDatos);

            }


            conexion.CerrarConexion();
            return listaUsuario;

        }
        public ClUsuarioE mtdLogin(ClUsuarioE objE,int tipo=0)
        {
            string consulta = "";
            if (tipo ==0)
            {
               consulta= "select Usuario.*,UsuarioRol.idRol from Usuario inner join UsuarioRol on Usuario.idUsuario=UsuarioRol.idUsuario where email='" + objE.email + "' and contraseña='" + objE.contraseña + "'";
            }
            else if (tipo==2)
            {
                consulta = "select * from Usuario where documento='" + objE.documento+ "'";
            }
            else
            {
                consulta = "select * from Usuario where email='" + objE.email + "' and contraseña='" + objE.contraseña + "'";
            }
            
            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable tblVeterinaria = SQL.mtdSelectDesc(consulta);
            ClUsuarioE objU = new ClUsuarioE();
            if (tblVeterinaria != null && tblVeterinaria.Rows.Count > 0)
            {
                objU.nombre = tblVeterinaria.Rows[0]["nombre"].ToString();
                objU.apellido = tblVeterinaria.Rows[0]["apellido"].ToString();
                objU.direccion = tblVeterinaria.Rows[0]["direccion"].ToString();
                objU.telefono = tblVeterinaria.Rows[0]["telefono"].ToString();
                objU.email = tblVeterinaria.Rows[0]["email"].ToString();
                objU.foto = tblVeterinaria.Rows[0]["foto"].ToString();
                objU.genero = tblVeterinaria.Rows[0]["genero"].ToString();
                objU.contraseña = tblVeterinaria.Rows[0]["contraseña"].ToString();
                objU.idUsuario = int.Parse(tblVeterinaria.Rows[0]["idUsuario"].ToString());
                if (tipo==0)
                {
                    objU.idRol = int.Parse(tblVeterinaria.Rows[0]["idRol"].ToString());
                }

            }

            return objU;
        }
        public void mtdIngresarRol(int idUsuario,int idRol =1 )
        {
            string consultaRol = "RegistrarRol";
            if (idRol!=1)
            {
                consultaRol = "ActualizarRol";

            }

            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = consultaRol;
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@idUsuario", idUsuario);
            comando.Parameters.AddWithValue("@idRol", idRol);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
        }



        public List<ClUsuarioE> mtdListar2(int Mostrar = 0)
        {
            string consulta = "select * from Usuario where profesion = 'Veterinario'";
            if (Mostrar != 0)
            {
                consulta = "select * from Usuario inner join UsuarioRol on Usuario.idUsuario=UsuarioRol.idUsuario inner join UsuarioVeterinaria on Usuario.idUsuario=UsuarioVeterinaria.idUsuario where UsuarioRol.idRol=4 and UsuarioVeterinaria.idVeterinaria='" + Mostrar + "'";
            }
            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable tblVeterinaria = SQL.mtdSelectDesc(consulta);
            List<ClUsuarioE> listaProductos = new List<ClUsuarioE>();
            for (int i = 0; i < tblVeterinaria.Rows.Count; i++)
            {
                ClUsuarioE objVet = new ClUsuarioE();
                objVet.nombre = tblVeterinaria.Rows[i]["nombre"].ToString();
                objVet.apellido = tblVeterinaria.Rows[i]["apellido"].ToString();
                objVet.telefono = tblVeterinaria.Rows[i]["telefono"].ToString();
                objVet.email = tblVeterinaria.Rows[i]["email"].ToString();
                objVet.foto = tblVeterinaria.Rows[i]["foto"].ToString();
                objVet.direccion = tblVeterinaria.Rows[i]["direccion"].ToString();
                objVet.genero = tblVeterinaria.Rows[i]["genero"].ToString();
                objVet.contraseña = tblVeterinaria.Rows[i]["contraseña"].ToString();
                objVet.especializacion = tblVeterinaria.Rows[i]["especializacion"].ToString();
                objVet.experiencia = tblVeterinaria.Rows[i]["experiencia"].ToString();
                objVet.profesion = tblVeterinaria.Rows[i]["profesion"].ToString();
                objVet.idUsuario = int.Parse(tblVeterinaria.Rows[i]["idUsuario"].ToString());
                listaProductos.Add(objVet);
            }
            return listaProductos;
        }
        public List<ClUsuarioE> mtdListar(int idVeterinaria)
        {

            
            
            string consulta = "select Usuario.* from Usuario inner join UsuarioVeterinaria on Usuario.idUsuario= UsuarioVeterinaria.idUsuario inner join UsuarioRol on " +
                "UsuarioRol.idUsuario = Usuario.idUsuario where idVeterinaria = '" + idVeterinaria + "' and UsuarioRol.idRol = 4; ";

            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable tblVeterinaria = SQL.mtdSelectDesc(consulta);
            List<ClUsuarioE> listaProductos = new List<ClUsuarioE>();
            for (int i = 0; i < tblVeterinaria.Rows.Count; i++)
            {
                ClUsuarioE objVet = new ClUsuarioE();
                objVet.nombre = tblVeterinaria.Rows[i]["nombre"].ToString();
                objVet.apellido = tblVeterinaria.Rows[i]["apellido"].ToString();
                objVet.telefono = tblVeterinaria.Rows[i]["telefono"].ToString();
                objVet.email = tblVeterinaria.Rows[i]["email"].ToString();
                objVet.foto = tblVeterinaria.Rows[i]["foto"].ToString();
                objVet.direccion = tblVeterinaria.Rows[i]["direccion"].ToString();
                objVet.genero = tblVeterinaria.Rows[i]["genero"].ToString();
                objVet.contraseña = tblVeterinaria.Rows[i]["contraseña"].ToString();
                objVet.especializacion = tblVeterinaria.Rows[i]["especializacion"].ToString();
                objVet.experiencia = tblVeterinaria.Rows[i]["experiencia"].ToString();
                objVet.profesion = tblVeterinaria.Rows[i]["profesion"].ToString();
                objVet.idUsuario = int.Parse(tblVeterinaria.Rows[i]["idUsuario"].ToString());
                listaProductos.Add(objVet);
            }
            return listaProductos;
        }

        public void mtdActualizarDatos(ClUsuarioE objE)
        {

            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "EditarPerfilUsuario" ;
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@nombre", objE.nombre);
            comando.Parameters.AddWithValue("@apellido", objE.apellido);
            comando.Parameters.AddWithValue("@genero", objE.genero);
            comando.Parameters.AddWithValue("@telefono", objE.telefono);
            comando.Parameters.AddWithValue("@email", objE.email);
            comando.Parameters.AddWithValue("@direccion", objE.direccion);
            comando.Parameters.AddWithValue("@contraseña", objE.contraseña);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();

        }

    }
}
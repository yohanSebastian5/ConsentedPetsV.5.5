﻿using ConsentedPets.Entidades;
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
        public void mtdRegistrarUsuarioRol(int idUsu, int idVeter)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistrarUsuarioVeterinaria";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@idUsuario", idUsu);
            comando.Parameters.AddWithValue("@idVeterinaria", idVeter);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public ClEstablecimientoE mtdListar(string foto="",int id=0,int tipo=0)
        {
            string consulta="";
            if (tipo==0)
            {
                 consulta = "select * from Veterinaria where foto='" + foto + "'";
            }
            else if (tipo==1)
            {
                consulta = "select * from Veterinaria where idVeterinaria='" + id + "'";
            }

            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable tblVeterinaria = SQL.mtdSelectDesc(consulta);
            ClEstablecimientoE objVet = new ClEstablecimientoE();
            objVet.id = int.Parse(tblVeterinaria.Rows[0]["idVeterinaria"].ToString());
            objVet.nombre = tblVeterinaria.Rows[0]["nombre"].ToString();
            objVet.direccion = tblVeterinaria.Rows[0]["direccion"].ToString();
            objVet.telefono = tblVeterinaria.Rows[0]["telefono"].ToString();
            objVet.email = tblVeterinaria.Rows[0]["email"].ToString();
            objVet.foto = tblVeterinaria.Rows[0]["foto"].ToString();
            return objVet;
        }

       








    }
}
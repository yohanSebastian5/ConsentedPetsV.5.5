﻿using ConsentedPets.Datos;
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

        public void mtdCita(ClCitaE objHist)
        {
            int cantReg = 0;
            string cons = "insert into CitaV(fecha, hora, estado, idMascota) " +
                              "values('" + objHist.FechaCita + "' , '" + objHist.HoraCita + "', '" + objHist.Estado + "', '" + objHist.idMascota + "') SELECT SCOPE_IDENTITY() AS [ultimoId]";
            ClProcesarSQL objSQL = new ClProcesarSQL();
            DataTable tblID = objSQL.mtdSelectDesc(cons);
            int idReg = int.Parse(tblID.Rows[0]["ultimoId"].ToString());
            string cons2 = " insert into HistorialV(idServicioV, idCitaV, idUsuario, precio, descripcion) values('"
                + objHist.idServicioV + "'," + idReg + ",'" + objHist.idUsuario + "','" + objHist.precio + "','" + objHist.descripcion + "')";
            cantReg = objSQL.mtdIUDConect(cons2);

        }

        public void mtdActualizarEstadoCita(int id, string estado)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "ActualizarCita";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@id", id);
            comando.Parameters.AddWithValue("@estado", estado);
            comando.ExecuteNonQuery();
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

using ConsentedPets.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Datos
{
    public class ClProcesosEscuela
    {
        public List<ClServicioVeterinariaE> mtdListar(int id)
        {
            string consulta = "select * from ServicioEs where idEscuela = '" + id+ "'";
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
    }
}
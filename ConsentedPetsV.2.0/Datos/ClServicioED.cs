using ConsentedPets.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Datos
{
    public class ClServicioED
    {

        public List<ClServicioEE> mtdListarServicio(int idEscuela)
        {
            string consulta = "select * from ServicioEs where idEscuela = '" + idEscuela + "'";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tabla = sql.mtdSelectDesc(consulta);
            List<ClServicioEE> lista = new List<ClServicioEE>();
            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                ClServicioEE objServicio = new ClServicioEE();
                objServicio.idServicioE = int.Parse(tabla.Rows[i]["idServicioE"].ToString());
                objServicio.nombre = tabla.Rows[i]["nombre"].ToString();
                objServicio.foto = tabla.Rows[i]["foto"].ToString();
                objServicio.idEscuela = int.Parse(tabla.Rows[i]["idEscuela"].ToString());
                lista.Add(objServicio);
            }
            return lista;
        }

       

       
    }
}
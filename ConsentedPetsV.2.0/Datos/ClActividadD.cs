using ConsentedPets.Datos;
using ConsentedPets.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Datos
{
    public class ClActividadD
    {
         public ClEstablecimientoE mtdListaDatoEs(int idEscuela)
        {
            string consul = "select * from Escuela where idEscuela = " + idEscuela + "";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tabla = sql.mtdSelectDesc(consul);
            ClEstablecimientoE objDato = new ClEstablecimientoE();
            objDato.id = int.Parse(tabla.Rows[0]["idTienda"].ToString());
            objDato.email = tabla.Rows[0]["email"].ToString();
            objDato.nombre = tabla.Rows[0]["nombre"].ToString();
            return objDato;


        }
    }
}
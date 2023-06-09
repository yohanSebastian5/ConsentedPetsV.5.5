using ConsentedPets.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Datos
{
    public class ClCursoED
    {
        public List<ClCursoEE> mtdCurso (int idEscuela)
        {
            string consulta = "seleect * from CursoE where idCurso = '" + idEscuela + "'";
            ClProcesarSQL sql = new ClProcesarSQL ();
            DataTable tabla = sql.mtdSelectDesc(consulta);
            List<ClCursoEE> lista = new List<ClCursoEE> ();
            for (int i = 0; i < tabla.Rows.Count; i++)
            {

                ClCursoEE objCurso = new ClCursoEE ();
                objCurso.idCurso = int.Parse(tabla.Rows[i]["idCurso"].ToString());
                lista.Add(objCurso);
            }
            return lista;
        }
    }
}
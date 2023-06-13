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
            string consulta = "select * from Curso inner join ServicioEs on Curso.idServicioE= ServicioEs.idServicioE where ServicioEs.idEscuela='"+idEscuela+"'";
            ClProcesarSQL sql = new ClProcesarSQL ();
            DataTable tabla = sql.mtdSelectDesc(consulta);
            List<ClCursoEE> lista = new List<ClCursoEE> ();
            for (int i = 0; i < tabla.Rows.Count; i++)
            {

                ClCursoEE objCurso = new ClCursoEE ();
                objCurso.idCurso = int.Parse(tabla.Rows[i]["idCurso"].ToString());
                objCurso.nombre = tabla.Rows[i]["nombre"].ToString();
                objCurso.descripcion = tabla.Rows[i]["descripcion"].ToString();
                objCurso.precio = int.Parse(tabla.Rows[i]["precio"].ToString());
                objCurso.foto = tabla.Rows[i]["foto"].ToString();
                objCurso.idServicioE = int.Parse(tabla.Rows[i]["idServicioE"].ToString());

                lista.Add(objCurso);
            }
            return lista;
        }
    }
}
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
        public List<ClCursoEE> mtdCurso(int idEscuela)
        {
            string consulta = "select * from CursoE inner join ServicioEs on CursoE.idServicioE= ServicioEs.idServicioE where ServicioEs.idEscuela='" + idEscuela + "'";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tabla = sql.mtdSelectDesc(consulta);
            List<ClCursoEE> lista = new List<ClCursoEE>();
            for (int i = 0; i < tabla.Rows.Count; i++)
            {

                ClCursoEE objCurso = new ClCursoEE();
                objCurso.idCurso = int.Parse(tabla.Rows[i]["idCursoE"].ToString());
                objCurso.nombre = tabla.Rows[i]["nombre"].ToString();
                objCurso.descripcion = tabla.Rows[i]["descripcion"].ToString();
                objCurso.precio = int.Parse(tabla.Rows[i]["precio"].ToString());
                objCurso.foto = tabla.Rows[i]["foto"].ToString();
                objCurso.idServicioE = int.Parse(tabla.Rows[i]["idServicioE"].ToString());

                lista.Add(objCurso);
            }
            return lista;
        }

        public List<ClCursoEE> mtdC(int idServicio)
        {
            string cons = "select * from CursoE where idServicioE ='" + idServicio + "'";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tabla = sql.mtdSelectDesc(cons);
            List<ClCursoEE> lista = new List<ClCursoEE>();
            for (int i = 0; i < tabla.Rows.Count; i++)
            {

                ClCursoEE objCurso = new ClCursoEE();
                objCurso.idCurso = int.Parse(tabla.Rows[i]["idCursoE"].ToString());
                objCurso.nombre = tabla.Rows[i]["nombre"].ToString();

                objCurso.idServicioE = int.Parse(tabla.Rows[i]["idServicioE"].ToString());

                lista.Add(objCurso);
            }
            return lista;
        }

        public ClCursoEE mtdCu(int idCurso)
        {
            string cons = "select * from CursoE where idCursoE ='" + idCurso + "'";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tabla = sql.mtdSelectDesc(cons);
            ClCursoEE objCurso = new ClCursoEE();
            objCurso.idCurso = int.Parse(tabla.Rows[0]["idCursoE"].ToString());
            objCurso.nombre = tabla.Rows[0]["nombre"].ToString();
            objCurso.descripcion = tabla.Rows[0]["descripcion"].ToString();
            objCurso.precio = int.Parse(tabla.Rows[0]["precio"].ToString());
            objCurso.foto = tabla.Rows[0]["foto"].ToString();
            return objCurso;
        }
    }
}
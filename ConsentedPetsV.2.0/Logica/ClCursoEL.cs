using ConsentedPetsV._2._0.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Logica
{
    public class ClCursoEL
    {
        public List<ClCursoEE> mtdCurso(int idEscuela)
        {
            ClCursoED objCurso = new ClCursoED();
            List<ClCursoEE> lista = objCurso.mtdCurso(idEscuela);
            return lista;
        }
    }
}
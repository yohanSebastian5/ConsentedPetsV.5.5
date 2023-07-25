using ConsentedPetsV._2._0.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Logica
{
    public class ClComentarioL
    {
        public void mtdRegistrar(ClComentarioE objE)
        {
            ClComentarioD objCita = new ClComentarioD();
            objCita.mtdCOmentario(objE);

        }

        public List<ClComentarioE> mtdListar(int seccion, int id)
        {
            ClComentarioD objD = new ClComentarioD();
            List<ClComentarioE> lista = objD.mtdListar(seccion, id);
            return lista;
        }
    }
}
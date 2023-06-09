using ConsentedPetsV._2._0.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Logica
{
    public class ClServicioEL
    {
       public List<ClServicioEE> mtdServicio(int idEscuela)
        {
            ClServicioED objServicio=new ClServicioED();
            List<ClServicioEE> lista = objServicio.mtdListarServicio(idEscuela);
            return lista;
        }
    }
}
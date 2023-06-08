using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Entidades
{
    public class ClProcesosVetE
    {
        public int idHistorialE { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public string foto { get; set; }
        public int idVeterinaria { get; set; }
        public int idEscuela { get; set; }
    }
}
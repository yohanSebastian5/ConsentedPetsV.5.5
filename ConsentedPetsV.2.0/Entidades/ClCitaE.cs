using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Entidades
{
    public class ClCitaE 
    {
        public int idcita { get; set; }
        public string Mascota { get; set; }
        public string FechaCita { get; set; }
        public string FechaCitaa { get; set; }
        public string HoraCita { get; set; }
        public string HoraCitaa { get; set; }
        public string Estado { get; set; }
        public string precio { get; set; }
        public string descripcion { get; set; }
        public int idMascota { get; set; }
        public string nombre { get; set; }
        public int idServicioV { get; set; }
        public int idUsuario { get; set; }
        public int idVeterinaria { get; set; }

    }
}
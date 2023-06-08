using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPets.Entidades
{
    public class ClRepeaterEstablecimientoE
    {
        public int idTienda { get; set; }
        public int idEscuela { get; set; }
        public int idVeterinaria { get; set; }        
        public string nombre { get; set; }
        public string direccion { get; set; }
        public string telefono { get; set; }
        public string email { get; set; }
        public string foto { get; set; }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPets.Entidades
{
    public class ClMascotaE
    {
        public int idMascota { get; set; }
        public string nombre { get; set; }
        public string especie { get; set; }
        public string raza { get; set; }
        public string genero { get; set; }
        public string edad { get; set; }
        public string foto { get; set; }
        public string condicionMedica { get; set; }
        public float precio { get; set; }
        public int idUsuario { get; set; }
        public int idTienda { get; set; }
    }
}
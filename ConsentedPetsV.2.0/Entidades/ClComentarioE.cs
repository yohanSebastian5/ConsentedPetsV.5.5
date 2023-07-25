using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Entidades
{
    public class ClComentarioE
    {
        public int idValoracion { get; set; }
        public string comentario { get; set; }
        public int calificacion { get; set; }
        public int idUsuario { get; set; }
        public int idEscuela { get; set; }
        public int idTienda { get; set; }
        public int idVeterinaria { get; set; }
        public string nombre { get; set; }
        public string foto { get; set; }
    }
}
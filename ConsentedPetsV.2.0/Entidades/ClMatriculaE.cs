using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Entidades
{
    public class ClMatriculaE
    {

        public int idMascota { get; set; }
        public int idEscuela { get; set; }
        public string fechaMatricula { get; set; }
        public int precio { get; set; }
        public int idRegistro { get; set; }
        public int idCurso { get; set; }

        
        public string precioTotal { get; set; }
        public string nombre { get; set; }
        public string mascota { get; set; }
        public string especie { get; set; }
        public string foto { get; set; }
        public string fotoU { get; set; }
        public string usuario { get; set; }
        public string apellido { get; set; }


    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Entidades
{
    public class ClServicioVeterinariaE
    {
        public int idServicioV { get; set; }
        public int id { get; set; }
        public string nombre { get; set; }
        public string foto { get; set; }
        public string descripcion { get; set; }
        public int precio { get; set; }
        public int idVeterinaria { get; set; }
        public int idCurso { get; set; }
        public string nombreC { get; set; }
        public string fecha { get; set; }
 

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Entidades
{
    public class CLProductoE
    {
        public int idCategoria{ get; set; }
        public int idTienda{ get; set; }
        public string nombreP{ get; set; }
        public string nombreC{ get; set; }
        public string descripcionC{ get; set; }
        public string descripcionP{ get; set; }
        public string foto{ get; set; }
        public string precio{ get; set; }
    }
}
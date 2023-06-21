using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Entidades
{
    public class ClProductoE
    {
        public int idProducto { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public string foto { get; set; }
        public int precio { get; set; }
        public int idCategoriaPS { get; set; }
    }
}
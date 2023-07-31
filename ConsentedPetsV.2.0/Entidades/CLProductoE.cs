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
        public int precioP { get; set; }
        public int idCategoriaPS { get; set; }
        public int idCategoria { get; set; }
        public int idUsuario { get; set; }
        public int idTienda { get; set; }
        public string nombreP { get; set; }
        public string nombreC { get; set; }
        public string descripcionC { get; set; }
        public string descripcionP { get; set; }
        public string precio { get; set; }
        public string fecha { get; set; }
        public string cantidad { get; set; }
        public string total { get; set; }

    }
}
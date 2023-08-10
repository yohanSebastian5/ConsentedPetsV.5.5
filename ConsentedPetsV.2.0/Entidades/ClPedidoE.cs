using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Entidades
{
	public class ClPedidoE
	{
        public int idPedidosC { get; set; }
        public int idUsuario { get; set; }
        public string name { get; set; }
        public string name2 { get; set; }
        public string email { get; set; }
        public string fecha { get; set; }
        public string estado { get; set; }
        public int idTienda { get; set; }
        public string message { get; set; }

    }
}
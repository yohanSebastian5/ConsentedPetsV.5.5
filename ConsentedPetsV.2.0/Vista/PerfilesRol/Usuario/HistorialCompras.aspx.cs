using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Usuario
{
    public partial class HistorialCompras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<ClProductoE> mtdLista()
        {

            int tipo = int.Parse(HttpContext.Current.Session["Usuario"].ToString());
            ClProductoL objL = new ClProductoL();
            List<ClProductoE> lista = objL.mtdListarCompras(tipo);
            return lista;
        }
    }
}
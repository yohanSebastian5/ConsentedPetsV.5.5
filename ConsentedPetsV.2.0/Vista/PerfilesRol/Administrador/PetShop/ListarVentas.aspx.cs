using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using ConsentedPetsV._2._0.Datos;
using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.PetShop
{
    public partial class ListarVentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<CLProductoE> mtdLista()
        {
            int tipo = int.Parse(HttpContext.Current.Session["Tienda"].ToString());
            ClProductoL objL = new ClProductoL();
            List<CLProductoE> lista= objL.mtdListarVentas(tipo);
            return lista;
        }
    }
}
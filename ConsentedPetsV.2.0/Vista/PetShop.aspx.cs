using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPets.Vista
{
    public partial class PetShop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Seccion = 2;
            ClRepeaterEstablecimientoL objVet = new ClRepeaterEstablecimientoL();
            List<ClRepeaterEstablecimientoE> lista = objVet.mtdRepeater(Seccion);
            repShop.DataSource = lista;
            repShop.DataBind();
        }
        [WebMethod]
        public static void ListarE(string tipo)
        {
            HttpContext.Current.Session["Tienda"] = tipo;
        }
    }
}
using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using static System.Collections.Specialized.BitVector32;

namespace ConsentedPets.Vista
{
    public partial class ClinicaVeterinaria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Escuela"] = 0;
            Session["Tienda"] = 0;
            int Seccion = 1;
            ClRepeaterEstablecimientoL objVet = new ClRepeaterEstablecimientoL();
            List<ClRepeaterEstablecimientoE> lista = objVet.mtdRepeater(Seccion);
            repVet.DataSource = lista;
            repVet.DataBind();

        }

        [WebMethod]
        public static void ListarV(string tipo)
        {
            HttpContext.Current.Session["Veterinaria"] = tipo;
        }
    }
}
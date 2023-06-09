using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace ConsentedPets.Vista
{
    public partial class Escuela : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Seccion = 3;
            ClRepeaterEstablecimientoL objVet = new ClRepeaterEstablecimientoL();
            List<ClRepeaterEstablecimientoE> lista = objVet.mtdRepeater(Seccion);
            repSchool.DataSource = lista;
            repSchool.DataBind();
        }
        public static void ListarSchool(string tipo)
        {
            HttpContext.Current.Session["Escuela"] = tipo;
        }
    }
}
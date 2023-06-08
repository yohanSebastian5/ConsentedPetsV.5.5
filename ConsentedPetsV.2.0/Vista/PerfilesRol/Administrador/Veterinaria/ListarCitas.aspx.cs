using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.Veterinaria
{
    public partial class ListarCitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<ClCitaE> mtdLista()
        {
            int tipo = int.Parse(HttpContext.Current.Session["Veterinaria"].ToString());
            ClCitaL objCitaL = new ClCitaL();
            List<ClCitaE> lista= objCitaL.mtdListar(tipo);
            return lista;
        }
    }
}
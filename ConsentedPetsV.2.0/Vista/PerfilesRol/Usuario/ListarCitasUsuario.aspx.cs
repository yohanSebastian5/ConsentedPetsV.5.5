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
    public partial class ListarCitasUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<ClCitaE> mtdLista()
        {
            int id = int.Parse(HttpContext.Current.Session["Usuario"].ToString());
            int tipo = 2;
            ClCitaL objCitaL = new ClCitaL();
            List<ClCitaE> lista = objCitaL.mtdListar(id,tipo);
            return lista;
        }
    }
}
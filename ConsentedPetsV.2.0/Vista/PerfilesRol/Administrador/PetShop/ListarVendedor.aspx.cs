using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.PetShop
{
    public partial class ListarVendedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<ClUsuarioE> mtdLista()
        {
            int tipo = int.Parse(HttpContext.Current.Session["Tienda"].ToString());
            CLUsuarioL objUsuarioL = new CLUsuarioL();
            List<ClUsuarioE> listaPersonal = objUsuarioL.mtdRepeater(tipo, 2);
            return listaPersonal;
        }
    }
}
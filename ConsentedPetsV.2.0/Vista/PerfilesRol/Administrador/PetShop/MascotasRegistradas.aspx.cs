using ConsentedPets.Entidades;
using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.PetShop
{
    public partial class MascotasRegistradas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClProductoL objL = new ClProductoL();
            Session["Escuela"] = 1;
            List<ClMascotaE> lista = objL.mtdListarMascota(int.Parse(Session["Escuela"].ToString()));
            repCard.DataSource = lista;
            repCard.DataBind();
        }
    }
}
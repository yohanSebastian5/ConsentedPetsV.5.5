using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Usuario
{
    public partial class MascotasRegistradas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuarios = int.Parse(Session["Usuario"].ToString());
            if (idUsuarios == 0)
            {
                Response.Redirect("../../../PaginaPrincipal.aspx");
            }
            int idUsuario = int.Parse(Session["Usuario"].ToString());
            ClMascotaL objData = new ClMascotaL();
            List<ClMascotaE> listaMascota = objData.mtdListarMascota(idUsuario);
            repMascota.DataSource = listaMascota;
            repMascota.DataBind();
        }
    }
}
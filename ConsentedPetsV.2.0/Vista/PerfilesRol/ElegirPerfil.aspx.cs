using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol
{
    public partial class ElegirPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int sesion = int.Parse(Session["RolUsuario"].ToString());
            if (sesion==1)
            {
                Response.Redirect("Usuario/EditarPerfil.aspx");
            }
        }

        protected void btnUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usuario/EditarPerfil.aspx");
        }

        protected void btnAdministrador_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrador/ListarVeterinarias.aspx");
        }
    }
}
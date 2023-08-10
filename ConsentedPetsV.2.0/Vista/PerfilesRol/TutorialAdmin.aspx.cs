using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador
{
    public partial class TutorialAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Establecimiento Registrado !', 'Ten en cuenta el pequeño tutorial expuesto para manejar tus negocios desde el perfil Administrador y sus respectivas Secciones.', 'success')", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ElegirPerfil.aspx");
        }
    }
}
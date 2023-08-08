using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Veterinaria"] = 0;
            Session["Tienda"] = 0;
            Session["Escuela"] = 0;
            string nombre = Session["NombreUsuario"].ToString();
            if (nombre!="")
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Bienvenido " + nombre + "!', 'Haz iniciado Sesion', 'success')", true);

            }
        }
    }
}
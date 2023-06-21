using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPets.Vista.PerfilesRol.Administrador.Veterinaria
{
    public partial class Veterinaria : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void link1_Click(object sender, EventArgs e)
        {
            Session["Clase"] = 1;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace ConsentedPetsV._2._0
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["RolUsuario"] = 0;
            Session["Usuario"] = 0;
            Session["Veterinaria"] = 0;
            Session["Tienda"] = 0;
            Session["Escuela"] = 0;
            Session["idVeterinaria"] = 0;
            Session["idMascota"] = 0;
            Session["idEscuela"] = 0;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}
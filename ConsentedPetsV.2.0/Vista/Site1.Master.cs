using ConsentedPets.Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System.Data.SqlClient;
using System.Data;


namespace ConsentedPets.Vista
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //btnLogin.ServerClick += new EventHandler(btnLogin_Click);
            int usu =int.Parse( Session["Usuario"].ToString());
            if (usu!=0)
            {
                sesionn.Text = "Cerrar Sesion";
            }
   

        }
        public void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        
    }
}
using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (int.Parse(Session["Usuario"].ToString())!=0)
            {
                if (int.Parse(Session["Veterinaria"].ToString()) != 0)
                {
                    Response.Redirect("PaginaVeterinaria.aspx");

                }
                else if (int.Parse(Session["Escuela"].ToString()) != 0)
                {
                    Response.Redirect("PaginaEscuela.aspx");
                }

            }


        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            ClUsuarioE objUsuE = new ClUsuarioE();
            objUsuE.email = txtUsuario.Value;
            objUsuE.contraseña = txtContraseña.Value;
            CLUsuarioL objUsuL = new CLUsuarioL();
            objUsuE = objUsuL.mtdRolU(objUsuE);


           


            if (objUsuE.nombre != null)
            {
                Session["RolUsuario"] = objUsuE.idRol;
                Session["Usuario"] = objUsuE.idUsuario;
                if (int.Parse(Session["Veterinaria"].ToString()) != 0)
                {
                    Response.Redirect("PaginaVeterinaria.aspx");
                }
                else if (int.Parse(Session["Escuela"].ToString()) != 0)
                {
                    Response.Redirect("PaginaEscuela/PaginaEscuela.aspx");
                }

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Bienvenido " + objUsuE.nombre + "!', 'Haz iniciado Sesion', 'success')", true);
                txtUsuario.Value = "";


            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Error !', 'Usuario  No Registrado', 'warning')", true);
                txtUsuario.Value = "";
            }

        }
    }
}
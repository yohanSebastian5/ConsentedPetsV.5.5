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
            int idUsuarios = int.Parse(Session["Usuario"].ToString());
            if (idUsuarios == 0)
            {
                Response.Redirect("../../PaginaPrincipal.aspx");
            }

        }

        protected void btnUsuario_Click(object sender, EventArgs e)
        {
            int idUsuario = int.Parse(Session["Usuario"].ToString());
            if (idUsuario > 0)
            {
                Response.Redirect("Usuario/EditarPerfil.aspx");
            }
            else
            {
                Response.Redirect("../Login.aspx");
            }           
        }

        protected void btnAdministrador_Click(object sender, EventArgs e)
        {
            int Usuario = int.Parse(Session["RolUsuario"].ToString());
            if (Usuario ==2)
            {
                Response.Redirect("Administrador/ListarVeterinarias.aspx");
            }
            else
            {
                Response.Redirect("../Establecimiento/RegistrarEstablecimiento.aspx");
            }
          
        }
    }
}
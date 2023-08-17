using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador
{
    public partial class ListarTiendas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuarios = int.Parse(Session["RolUsuario"].ToString());
            if (idUsuarios != 2)
            {
                Response.Redirect("../../../PaginaPrincipal.aspx");
            }
            int Seccion = 2;

            ClRepeaterEstablecimientoL objVet = new ClRepeaterEstablecimientoL();
            List<ClRepeaterEstablecimientoE> lista = objVet.mtdRepeater(Seccion, int.Parse(Session["Usuario"].ToString()), 2);
            repVet.DataSource = lista;
            repVet.DataBind();
        }
        [WebMethod]
        public static void ListarV(string tipo)
        {
            HttpContext.Current.Session["Tienda"] = tipo;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Vista/PerfilesRol/Administrador/PetShop/EditarPerfilP.aspx");
        }
    }
}
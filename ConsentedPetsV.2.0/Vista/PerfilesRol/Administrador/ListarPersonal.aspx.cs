using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConsentedPets.Logica;
using ConsentedPets.Entidades;
using System.Web.Services;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador
{
    public partial class ListarPersonal : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuarios = int.Parse(Session["RolUsuario"].ToString());
            if (idUsuarios != 2)
            {
                Response.Redirect("../../../PaginaPrincipal.aspx");
            }
        }
        [WebMethod]
        public static List<ClUsuarioE> mtdLista()
        {
            int tipo = int.Parse(HttpContext.Current.Session["Usuario"].ToString());
            CLUsuarioL objUsuarioL = new CLUsuarioL();
            List<ClUsuarioE> listaPersonal = objUsuarioL.mtdRepeater(tipo);
            return listaPersonal;
        }

    }
}
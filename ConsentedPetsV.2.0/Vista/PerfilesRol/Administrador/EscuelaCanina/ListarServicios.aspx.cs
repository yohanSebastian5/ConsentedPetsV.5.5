using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina
{
    public partial class ListarServicios : System.Web.UI.Page
    {
        ClServicioVetL objL = new ClServicioVetL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
               
                List<ClServicioVeterinariaE> lista = objL.mtdListar(int.Parse(Session["Escuela"].ToString()));
                rpServis.DataSource = lista;
                rpServis.DataBind();
                
            }

        }
        [WebMethod]
        public static void Listar(string tipo)
        {
            HttpContext.Current.Session["Servicio"] = tipo;
        }
        List<ClServicioVeterinariaE> listaG = null;
        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("ListarCursos.aspx");

        }

       
    }
}
using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina
{
    public partial class ListarMatriculas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<ClMatriculaE> mtdLista()
        {
            int tipo = int.Parse(HttpContext.Current.Session["Escuela"].ToString());
            ClProcesosVetL objL = new ClProcesosVetL();
            List<ClMatriculaE> listaPersonal = objL.mtdListarMatriculas(tipo);
            return listaPersonal;
        }
    }
}
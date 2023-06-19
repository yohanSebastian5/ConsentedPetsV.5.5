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
    public partial class ListarActividades1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public List<ClServicioVeterinariaE> mtdListar()
        {
            ClProcesosVetL objL = new ClProcesosVetL();
            List<ClServicioVeterinariaE> lista = objL.mtdListarActividad(int.Parse(Session["Escuela"].ToString()));
            return lista;
        }
    }
}
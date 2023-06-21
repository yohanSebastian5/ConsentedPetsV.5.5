using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina
{
    public partial class ListarMascotas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClProcesosVetL objL = new ClProcesosVetL();
            List<ClMatriculaE> lista = objL.mtdListarMascotas(int.Parse(Session["Escuela"].ToString()));
            repCard.DataSource=lista;
            repCard.DataBind();
        }
    }
}
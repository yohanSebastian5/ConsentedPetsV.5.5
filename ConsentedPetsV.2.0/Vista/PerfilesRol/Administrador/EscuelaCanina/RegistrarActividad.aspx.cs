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
    public partial class RegistrarActividad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void calendarFecha_SelectionChanged(object sender, EventArgs e)
        {
            txtFecha.Value= calendarFecha.SelectedDate.ToString("yyyy-MM-dd");
        }
        public void mtdRegistrarActividad()
        {
            ClProcesosVetL objL = new ClProcesosVetL();
            ClServicioVeterinariaE objE = new ClServicioVeterinariaE();
            objE.nombre = txtnombre.Value;
            objE.descripcion = txtDescripcion.Value;
            objE.fecha = txtFecha.Value;
            objE.idServicioV = int.Parse(Session["Escuela"].ToString());
            objL.mtdRegistrarActividad(objE);

        }
    }
}
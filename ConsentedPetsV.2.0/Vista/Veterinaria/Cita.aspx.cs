using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.Veterinaria
{
    public partial class Cita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int idUsuario = int.Parse(Session["Usuario"].ToString());
                ClMascotaL objData = new ClMascotaL();
                List<ClMascotaE> listaMascota = new List<ClMascotaE>();
                listaMascota = objData.mtdListarMascota(idUsuario);

                ddlMascota.DataSource = listaMascota;


                ddlMascota.DataTextField = "nombre";

                ddlMascota.DataValueField = "idMascota";
                ddlMascota.DataBind();
            }
            
        }
        protected void btnAgendarCita_Click(object sender, EventArgs e)
        {
            ClCitaL objCita = new ClCitaL();
            int mascota = int.Parse(ddlMascota.SelectedValue.ToString());
            string fechaCita = calendarFecha.SelectedDate.ToString();
            string hora = ddlHora.SelectedValue;
            string estado = ddlEstado.SelectedValue;
            

            objCita.mtdRegistrar(mascota, fechaCita, hora, estado);                     
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Cita Registrada !', 'Haz Registrado una Cita', 'success')", true);                                    
            }

        protected void calendarFecha_SelectionChanged(object sender, EventArgs e)
        {
            fechaSeleccionadaTextBox.Text = calendarFecha.SelectedDate.ToString("yyyy-MM-dd");
        }
    }
}
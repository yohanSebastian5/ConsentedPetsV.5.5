using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using ConsentedPets.Vista.PerfilesRol.Administrador.Veterinaria;
using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista
{
    public partial class PaginaVeterinaria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            int idUsuario = int.Parse(Session["Usuario"].ToString());
            idUsuario = 1;
            ClMascotaL objData = new ClMascotaL();
            List<ClMascotaE> listaMascota = objData.mtdListarMascota(idUsuario);
            ddlMascota.DataSource = listaMascota;
            ddlMascota.DataTextField = "nombre";
            ddlMascota.DataValueField = "idMascota";
            ddlMascota.DataBind();


            int idVeterinaria = int.Parse(Session["Veterinaria"].ToString());
            idVeterinaria = 1;
            idVeterinaria = 1;
            ClServicioVetL objVet = new ClServicioVetL();
            List<ClServicioVeterinariaE> lista = objVet.mtdRepeater(idVeterinaria);
            ddlServicio.DataSource = lista;
            ddlServicio.DataTextField = "nombre";
            ddlServicio.DataValueField = "idServicioV";
            ddlServicio.DataBind();
            repServicio.DataSource = lista;
            repServicio.DataBind();

            CLUsuarioL objVete = new CLUsuarioL();
            List<ClUsuarioE> listaVete = objVete.mtdRepeater(idVeterinaria);
            repVete.DataSource = listaVete;
            repVete.DataBind();

            ClProcesosVetL objProcesos = new ClProcesosVetL();
            List<ClProcesosVetE> listaProcesos = objProcesos.mtdProcesos(idVeterinaria);
            repProcesos.DataSource = listaProcesos;
            repProcesos.DataBind();

            ClEstablecimientoL objVeterinaria = new ClEstablecimientoL();
            List<ClEstablecimientoE> listaV = objVeterinaria.mtdEstablecimiento(idVeterinaria);
            string imagePath = "~/Vista/imagenes/ImagenesEstablecimiento/" + listaV[0].foto;
            idImagEstab.ImageUrl = imagePath;
            nom.InnerText = lista[0].nombre;




        }

        protected void calendarFecha_SelectionChanged(object sender, EventArgs e)
        {
            txtFecha.Text = calendarFecha.SelectedDate.ToString("yyyy-MM-dd");
        }

        protected void btnAgendarCita_Click1(object sender, EventArgs e)
        {
            ClCitaL objCita = new ClCitaL();
            int mascota = int.Parse(ddlMascota.SelectedValue.ToString());
            string fechaCita = txtFecha.Text;
            string hora = ddlHora.SelectedValue;
            string estado = ddlEstado.SelectedValue;



            objCita.mtdRegistrar(mascota, fechaCita, hora, estado);

            if (objCita != null)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Cita Registrada !', 'Haz Registrado una Cita', 'success')", true);
            }

        }
    }
}
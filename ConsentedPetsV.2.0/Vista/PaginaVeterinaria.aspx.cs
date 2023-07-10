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

            if (!IsPostBack)
            {

                int idUsuario = int.Parse(Session["Usuario"].ToString());
             
                int idVeterinaria = int.Parse(Session["Veterinaria"].ToString());
               
                ClMascotaL objData = new ClMascotaL();
                List<ClMascotaE> listaMascota = objData.mtdListarMascota(idUsuario);
                ddlMascota.DataSource = listaMascota;
                ddlMascota.DataTextField = "nombre";
                ddlMascota.DataValueField = "idMascota";
                ddlMascota.DataBind();


                
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
               
                nom.InnerText = listaV[0].nombre;


            }



        }

        protected void calendarFecha_SelectionChanged(object sender, EventArgs e)
        {
            txtFecha.Text = calendarFecha.SelectedDate.ToString("yyyy-MM-dd");
        }

        protected void btnAgendarCita_Click1(object sender, EventArgs e)
        {
            int idServicio = int.Parse(ddlServicio.SelectedValue);
            int idUsuario = int.Parse(Session["Usuario"].ToString());
              
            ClServicioVetL objS = new ClServicioVetL();
            ClServicioVeterinariaE objSe = objS.mtdListarSer(idServicio);
            ClCitaL objCita = new ClCitaL();
            ClCitaE objHis = new ClCitaE();
            objHis.idMascota = int.Parse(ddlMascota.SelectedValue.ToString());
            objHis.FechaCita = txtFecha.Text;
            objHis.HoraCita = ddlHora.SelectedValue;
            objHis.Estado = ddlEstado.SelectedValue;
            
            objHis.idServicioV = int.Parse(ddlServicio.SelectedValue);
            objHis.idUsuario = idUsuario;
            objHis.precio = objSe.precio.ToString();
            objHis.descripcion = objSe.descripcion;

            objCita.mtdRegistrar(objHis);
          
            mtdlimpiar();
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Bien " + objHis.nombre + "!', 'Haz agendado una cita', 'success')", true);
      

        }

        public void mtdlimpiar()
        {
            ddlMascota.SelectedIndex = 0;
            txtFecha.Text = "";
            ddlHora.SelectedIndex = 0;
            ddlEstado.SelectedIndex = 0;
            ddlServicio.SelectedIndex = 0;
         

        }
    }
}
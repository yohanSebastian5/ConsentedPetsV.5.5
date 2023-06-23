using ConsentedPets.Datos;
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

namespace ConsentedPetsV._2._0.Vista.PaginaEscuela
{
    public partial class PaginaEscuela : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                

                int idEscuela = int.Parse(Session["Escuela"].ToString());
                int idUsuario = int.Parse(Session["Usuario"].ToString());
                idEscuela = 1;
                idUsuario = 5;
                ClServicioEL objServicio = new ClServicioEL();
                List<ClServicioEE> lista = objServicio.mtdServicio(idEscuela);
                repServicio.DataSource = lista;
                repServicio.DataBind();

                ddlServicio.DataSource = lista;
                ddlServicio.DataTextField = "nombre";
                ddlServicio.DataValueField = "idServicioE";
                ddlServicio.DataBind();
                ddlServicio.Items.Insert(0, new ListItem("Seleccione un servicio:", "0"));
                //ddlCurso.Items.Insert(0, new ListItem("Seleccione un curso del servicio:", "0"));


                ClCursoEL objCurso = new ClCursoEL();
                List<ClCursoEE> listaC = objCurso.mtdCurso(idEscuela);
                repCurso.DataSource = listaC;
                repCurso.DataBind();


                CLUsuarioL objUs = new CLUsuarioL();
                List<ClUsuarioE> listaP = objUs.mtdProfesores(idEscuela);
                repTeacher.DataSource = listaP;
                repTeacher.DataBind();

                ClMascotaL objData = new ClMascotaL();
                List<ClMascotaE> listaMascota = new List<ClMascotaE>();
                listaMascota = objData.mtdListarMascota(idUsuario);
                ddlMascota.DataSource = listaMascota;
                ddlMascota.DataTextField = "nombre";
                ddlMascota.DataValueField = "idMascota";
                ddlMascota.DataBind();
                ddlMascota.Items.Insert(0, new ListItem("Seleccione una mascota:", "0"));

                ClEstablecimientoL objEs = new ClEstablecimientoL();
                ClEstablecimientoE obj = objEs.mtdListarVet("", "Escuela", idEscuela, 1);
                string image = "../imagenes/ImagenesEstablecimiento/" + obj.foto;

                foto.ImageUrl = image;
                nombre.InnerText = obj.nombre;
                idImagEstab.ImageUrl = image;
                nom.InnerText = obj.nombre;


            }
          

        }
       
        public void mtdlimpiar()
        {
            ddlCurso.SelectedIndex = 0;
            ddlServicio.SelectedIndex = 0;
            ddlMascota.SelectedIndex = 0;
            idMostrarNombre.InnerText = "";
            idMostrarDescripcion.InnerText = "";
            precio.InnerText = "";

        }
        protected void ddlCurso_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idCurso = int.Parse(ddlCurso.SelectedValue);
            ClCursoEL curso = new ClCursoEL();
            ClCursoEE cursoSelec = curso.mtdCu(idCurso);
            idMostrarNombre.InnerText = cursoSelec.nombre;
            idMostrarDescripcion.InnerText = cursoSelec.descripcion;
            precio.InnerText = ((int)cursoSelec.precio).ToString();

            //precio = cursoSelec.precio;

            //fechaSeleccionadaTextBox.Text = calendarFecha.SelectedDate.ToString("yyyy-MM-dd");
        }
        protected void ddlServicio_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idServicio = int.Parse(ddlServicio.SelectedValue);
            ClCursoEL objServicio = new ClCursoEL();
            List<ClCursoEE> lista = objServicio.mtdC(idServicio);
            ddlCurso.Items.Clear();
            ddlCurso.DataSource = lista;
            ddlCurso.DataTextField = "nombre";
            ddlCurso.DataValueField = "idCurso";
            ddlCurso.DataBind();
            ddlCurso.Items.Insert(0, new ListItem("Seleccione un curso del servicio:", "0"));

        }

        protected void btnM_Click(object sender, EventArgs e)
        {

            int idEscuela = int.Parse(Session["Escuela"].ToString());
            idEscuela = 1;
            ClMatriculaL objML = new ClMatriculaL();
            ClMatriculaE objME = new ClMatriculaE();
            DateTime fechaActual = DateTime.Today;
            objME.fechaMatricula = fechaActual.Date.ToString("dd/MM/yyyy");

            objME.idMascota = 1; // int.Parse(ddlMascota.SelectedValue);
            objME.idEscuela = idEscuela;
            objME.idCurso = int.Parse(ddlCurso.SelectedValue);
            objME.precio = int.Parse(precio.InnerText);
            objML.mtdMatricula(objME);
            mtdlimpiar();
        }
    }
}
using ConsentedPets.Datos;
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
using System.Web.UI.HtmlControls;
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
                
                ClServicioEL objServicio = new ClServicioEL();
                List<ClServicioEE> lista = objServicio.mtdServicio(idEscuela);
                repServicio.DataSource = lista;
                repServicio.DataBind();

                ddlServicio.DataSource = lista;
                ddlServicio.DataTextField = "nombre";
                ddlServicio.DataValueField = "idServicioE";
                ddlServicio.DataBind();
                ddlServicio.Items.Insert(0, new ListItem("Seleccione un servicio:", "0"));


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
                emaile.InnerText = obj.email;
                tele.InnerText = obj.telefono;
                direc.InnerText = obj.direccion;
                foto.ImageUrl = image;
                nombre.InnerText = obj.nombre;
                idImagEstab.ImageUrl = image;
                nom.InnerText = obj.nombre;

                int seccion = 3;
                ClComentarioL objL = new ClComentarioL();
                List<ClComentarioE> listaCom = objL.mtdListar(seccion, idEscuela);
                repComentario.DataSource = listaCom;
                repComentario.DataBind();
                
                

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

            ClMatriculaL objML = new ClMatriculaL();
            ClMatriculaE objME = new ClMatriculaE();
            DateTime fechaActual = DateTime.Today;
            objME.fechaMatricula = fechaActual.Date.ToString("dd/MM/yyyy");

            objME.idMascota = int.Parse(ddlMascota.SelectedValue);
            objME.idEscuela = idEscuela;
            objME.idCurso = int.Parse(ddlCurso.SelectedValue);
            objME.precio = int.Parse(precio.InnerText);
            objML.mtdMatricula(objME);
            mtdlimpiar();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Su Mascota" + objME.nombre + "!', 'A sido matriculada', 'success')", true);


        }
        [WebMethod]
        protected void btnEnviarComentario_Click(object sender, EventArgs e)
        {
            int idEscuela = int.Parse(Session["Escuela"].ToString());

            int idUsuario = int.Parse(Session["Usuario"].ToString());

            ClComentarioL objL = new ClComentarioL();
            ClComentarioE objE = new ClComentarioE();
            objE.comentario = comentario.InnerText;
            objE.calificacion = int.Parse(valorEstrellaHidden.Value); // Obtener el valor de la estrella seleccionada
            objE.idUsuario = idUsuario;
            objE.idEscuela = idEscuela;
            objL.mtdRegistrar(objE);
        }

        



    }
}
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
                idUsuario = 9;
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
                idEscuela = 1;
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

                ClEstablecimientoL objEs = new ClEstablecimientoL();
                ClEstablecimientoE obj = objEs.mtdListarVet("", "Escuela", idEscuela, 1);
                string image = "../imagenes/ImagenesEstablecimiento/" + obj.foto;
                foto.ImageUrl = image;
                nombre.InnerText = obj.nombre;
            }

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
    }
}
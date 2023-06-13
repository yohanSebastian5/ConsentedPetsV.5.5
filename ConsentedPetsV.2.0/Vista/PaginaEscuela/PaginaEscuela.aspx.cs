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
            int idEscuela = int.Parse(Session["Escuela"].ToString());
            ClServicioEL objServicio = new ClServicioEL();
            List<ClServicioEE> lista = objServicio.mtdServicio(idEscuela);
            repServicio.DataSource = lista;
            repServicio.DataBind();


            ClCursoEL objCurso = new ClCursoEL();
            List<ClCursoEE> listaC = objCurso.mtdCurso(idEscuela);
            repCurso.DataSource = listaC;
            repCurso.DataBind();
            idEscuela = 1;
            CLUsuarioL objUs = new CLUsuarioL();
            List<ClUsuarioE> listaP = objUs.mtdProfesores(idEscuela);
            repTeacher.DataSource = listaP;
            repTeacher.DataBind();

            ClEstablecimientoL objEs = new ClEstablecimientoL();
            ClEstablecimientoE obj = objEs.mtdListarVet("","Escuela",idEscuela,1);
            string image = "../imagenes/ImagenesEstablecimiento/" + obj.foto;
            foto.ImageUrl = image;
            nombre.InnerText = obj.nombre;

        }
    }
}
using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina
{
    public partial class ListarServicios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClServicioVetL objL = new ClServicioVetL();
               
                List<ClServicioVeterinariaE> lista = objL.mtdListar(int.Parse(Session["Escuela"].ToString()));
                rpServis.DataSource = lista;
                rpServis.DataBind();
                
            }

        }
        [WebMethod]
        public static void Listar(string tipo)
        {
            HttpContext.Current.Session["Servicio"] = tipo;
            var page = HttpContext.Current.Handler as ListarServicios ;
        }
        List<ClServicioVeterinariaE> listaG = null;
        protected void Button1_Click(object sender, EventArgs e)
        {

            int tipo = int.Parse(Session["Servicio"].ToString());
            ClProcesosVetL objL = new ClProcesosVetL();
            List<ClServicioVeterinariaE> lista = objL.mtdListarCurso(tipo);
            listaG = lista;
            ddlCursos.DataSource = lista;
            ddlCursos.DataTextField = "nombre";
            ddlCursos.DataValueField = "idCurso";
            ddlCursos.DataBind();
            ddlCursos.Items.Insert(0, new ListItem("Cursos Registrados: ", "0"));

            

        }
        public  void ListarC()
        {
            int curso = int.Parse(Session["Curso"].ToString());
            for (int i = 0; i < listaG.Count; i++)
            {
                if (curso == listaG[i].idCurso)
                {
                    txtNombreC.Text = listaG[i].nombre;
                    txtDescripcion.Text = listaG[i].descripcion;
                    string ruta = "../../../imagenes/ServicioCursoE/" + listaG[i].foto;
                    imgS.ImageUrl = ruta;
                    txtPrecio.Text = listaG[i].precio.ToString();
                }
            }

        }
        protected void ddlCursos_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(ddlCursos.SelectedValue.ToString());
            Session["Curso"] = id;
            ListarC();
        }

    }
}
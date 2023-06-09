using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina
{
    public partial class RegistrarCursosS : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClServicioVetL objL = new ClServicioVetL();
                ClServicioVeterinariaE objE = new ClServicioVeterinariaE();
                Session["Escuela"] = 1;
                List<ClServicioVeterinariaE> lista = objL.mtdListar(int.Parse(Session["Escuela"].ToString()));
                ddlTipo.DataSource = lista;
                ddlTipo.DataTextField = "nombre";
                ddlTipo.DataValueField = "idServicioV";
                ddlTipo.DataBind();
                ddlTipo.Items.Insert(0, new ListItem("Servicios Registrados: ", "0"));

            }

        }
        protected void ddlTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            ClServicioVetL objL = new ClServicioVetL();
            Session["Escuela"] = 1;
            List<ClServicioVeterinariaE> lista = objL.mtdListar(int.Parse(Session["Escuela"].ToString()));
            int tipo = ddlTipo.SelectedIndex;
            if (tipo>0)
            {
                txtServcio.Value = ddlTipo.SelectedItem.Text;
                string fotos= lista.FirstOrDefault(p => p.idServicioV == tipo)?.foto;
                string ruta = "../../../imagenes/ServicioCursoE/" + lista.FirstOrDefault(p=>p.idServicioV==tipo)?.foto;
                Image2.ImageUrl = ruta;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClServicioVetL objL = new ClServicioVetL();
            ClServicioVeterinariaE objE = new ClServicioVeterinariaE();
        }
    }
}
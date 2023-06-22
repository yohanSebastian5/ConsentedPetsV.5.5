using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPets.Vista.PerfilesRol.Administrador.Veterinaria
{
    public partial class RegistrarServicioV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlServicio.Items.Insert(0, new ListItem("Seleccione Servicio: ", "0"));
                ddlServicio.Items.Insert(1, new ListItem("Belleza ", "1"));
                ddlServicio.Items.Insert(2, new ListItem("Vacunacion ", "2"));
                ddlServicio.Items.Insert(3, new ListItem("Profilazis", "3"));
                ddlServicio.Items.Insert(4, new ListItem("Urgencias", "4"));
                ddlServicio.Items.Insert(5, new ListItem("Consulta General", "5"));
                ddlServicio.Items.Insert(6, new ListItem("Tratamiento de Heridas", "6"));
                ddlServicio.Items.Insert(7, new ListItem("Examenes", "7"));
                ddlServicio.Items.Insert(8, new ListItem("Radiografias", "8"));
                ddlServicio.Items.Insert(9, new ListItem("Cirugias", "9"));
                ddlServicio.DataBind();
            }
            btnRegistrar.ServerClick += new EventHandler(mtdRegistrar);
        }
        public void mtdRegistrar(object sender, EventArgs e)
        {
            ClServicioVeterinariaE objE = new ClServicioVeterinariaE();
            ClServicioVetL objL = new ClServicioVetL();
            string nombreV = txtNombre.Text+txtPrecio  + ".png";
            string rutaImg = Path.Combine(Server.MapPath("../../../imagenes/servicios/"), nombreV);
            FlImagenU.SaveAs(rutaImg);
            objE.idServicioV = int.Parse(ddlServicio.SelectedValue.ToString());
            objE.precio = int.Parse(txtPrecio.Text);
            objE.descripcion = txtDescripcio.Text;
            objE.nombre = txtNombre.Text;
            objE.idVeterinaria =int.Parse(Session["Veterinaria"].ToString());
            objE.foto = nombreV;
            objL.mtdRegistrar(objE);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Servicio " + objE.nombre + "!', 'Se ha Registrado con Exito', 'success')", true);

        }
    }
}
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
            btnRegistrar.ServerClick += new EventHandler(mtdRegistrar);
        }
        public void mtdRegistrar(object sender, EventArgs e)
        {
            ClServicioVeterinariaE objE = new ClServicioVeterinariaE();
            ClServicioVetL objL = new ClServicioVetL();
            string nombreV = txtNombre.Text+txtPrecio  + ".png";
            string rutaImg = Path.Combine(Server.MapPath("../../../imagenes/servicios/"), nombreV);
            FlImagenU.SaveAs(rutaImg);
            objE.idServicioV = int.Parse(Request.Form["grupo"]);
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
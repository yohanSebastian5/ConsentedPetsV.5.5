using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPets.Vista.PerfilesRol.Administrador.Veterinaria
{
    public partial class EditarPefilV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int clase = 1;
            ClEstablecimientoL objEstaL = new ClEstablecimientoL();
            ClEstablecimientoE objEstaE = objEstaL.mtdListarVet("", int.Parse(Session["Veterinaria"].ToString()), clase);
            txtNombre.Text = objEstaE.nombre;
            txtEmail.Text = objEstaE.email;
            txtDireccion.Text = objEstaE.direccion;
            txtTelefono.Text = objEstaE.telefono;
            string ruta = "../../../imagenes/ImagenesEstablecimiento/"+objEstaE.foto;
            Image1.ImageUrl = ruta;
        }

    }
}
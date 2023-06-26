using ConsentedPets.Datos;
using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
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
            if (!IsPostBack)
            {
                int clase = 1;

                ClEstablecimientoL objEstaL = new ClEstablecimientoL();
                ClEstablecimientoE objEstaE = objEstaL.mtdListarVet("", "Veterinaria", int.Parse(Session["Veterinaria"].ToString()), clase);
                txtNombre.Text = objEstaE.nombre;
                txtEmail.Text = objEstaE.email;
                txtDireccion.Text = objEstaE.direccion;
                txtTelefono.Text = objEstaE.telefono;
                Session["foto"] = objEstaE.foto;
                string ruta = "../../../imagenes/ImagenesEstablecimiento/" + objEstaE.foto;
                Image1.ImageUrl = ruta;

            }

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ClEstablecimientoE objE = new ClEstablecimientoE();
            ClEstablecimientoL objL = new ClEstablecimientoL();
            objE.nombre = txtNombre.Text;
            objE.telefono = txtTelefono.Text;
            objE.direccion= txtDireccion.Text;
            objE.email = txtEmail.Text;
            string foto = "";
            if (FlImagenV.HasFile)
            {

                string nombreV = 1 + txtNombre.Text + txtTelefono.Text + ".png";
                string rutaImg = Path.Combine(Server.MapPath("~/Vista/imagenes/ImagenesEstablecimiento/"), nombreV);
                FlImagenV.SaveAs(rutaImg);
                foto = nombreV;
            }
            else
            {
                foto= Session["foto"].ToString();
            }

            objE.foto = foto;
            objE.id= int.Parse(Session["Veterinaria"].ToString());
            objL.mtdActualizar(objE,"V");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Informacion Atualizada!', ''"+objE.nombre+"' A sido Actualizado', 'success')", true);




        }
    }
}
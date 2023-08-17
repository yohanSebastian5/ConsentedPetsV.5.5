using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.PetShop
{
    public partial class RegistrarMascota : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuarios = int.Parse(Session["RolUsuario"].ToString());
            if (idUsuarios != 2)
            {
                Response.Redirect("../../../../PaginaPrincipal.aspx");
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ClMascotaL objMascotaL = new ClMascotaL();
            //string tipo = ddlGenero.Data;
            string nombreV = txtNombre.Text + txtEspecie.Text + ".png";
            string rutaImg = Path.Combine(Server.MapPath("~/Vista/imagenes/ImagenesProductoCat/"), nombreV);
            FlFotoM.SaveAs(rutaImg);
            objMascotaL.mtdRegistrarPS(txtNombre.Text, txtEspecie.Text, txtRaza.Text, txtEdad.Text, txtGenero.Text, nombreV, txtCondicion.Text, int.Parse(Session["Tienda"].ToString()),int.Parse(txtPrecio.Text));
            
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Informacion Guardada " + objE.nombre + "!', 'A sido Actualizado', 'success')", true);

            
        }
    }
}
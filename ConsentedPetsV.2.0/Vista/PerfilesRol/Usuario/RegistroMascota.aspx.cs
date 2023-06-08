using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConsentedPets.Logica;
using System.IO;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Usuario
{
    public partial class RegistroMascota : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ClMascotaL objMascotaL = new ClMascotaL();
            int idUsuario = 1;
            int idVeterinaria = 1;
            //string tipo = ddlGenero.Data;
            string nombreV = txtNombre.Text + txtEspecie.Text + ".png";
            string rutaImg = Path.Combine(Server.MapPath("../imagenes/ImagenesMascota/"), nombreV);
            FlFotoM.SaveAs(rutaImg);
            objMascotaL.mtdRegistrar(txtNombre.Text, txtEspecie.Text, txtRaza.Text, txtEdad.Text, txtGenero.Text, nombreV, txtCondicion.Text, idUsuario, idVeterinaria);
            
        }
    }
}
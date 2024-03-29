﻿using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPets.Vista.Mascota
{
    public partial class RegistrarMascota : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

            ClMascotaL objMascotaL = new ClMascotaL();
            

            //string tipo = ddlGenero.Data;
            int idusu = int.Parse(Session["Usuario"].ToString());
            string nombreV =  txtNombre.Text + txtEspecie.Text + ".png";
            string rutaImg = Path.Combine(Server.MapPath("../imagenes/ImagenesMascota/"), nombreV);
            FlFotoM.SaveAs(rutaImg);
            objMascotaL.mtdRegistrar(txtNombre.Text, txtEspecie.Text,txtRaza.Text, txtEdad.Text,txtGenero.Text, nombreV,txtCondicion.Text, idusu);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Bienvenido " + txtNombre.Text + "!', 'Mascota Registrada con Exito', 'success')", true);

        }
    }
}
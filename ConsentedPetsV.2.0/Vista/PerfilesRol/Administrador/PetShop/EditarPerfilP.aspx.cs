﻿using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPets.Vista.PerfilesRol.Administrador.PetShop
{
    public partial class EditarPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int clase = 1;
                ClEstablecimientoL objEstaL = new ClEstablecimientoL();
                ClEstablecimientoE objEstaE = objEstaL.mtdListarVet("", "Tienda", int.Parse(Session["Tienda"].ToString()), clase);
                txtNombre.Text = objEstaE.nombre;
                txtEmail.Text = objEstaE.email;
                txtDireccion.Text = objEstaE.direccion;
                txtTelefono.Text = objEstaE.telefono;
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
            objE.direccion = txtDireccion.Text;
            objE.email = txtEmail.Text;
            objE.id = 1;
            string nombreV = 3 + txtNombre.Text + txtTelefono.Text + ".png";
            string rutaImg = Path.Combine(Server.MapPath("../../../imagenes/ImagenesEstablecimiento/"), nombreV);
            FlImagenV.SaveAs(rutaImg);
            objE.foto = nombreV;
            objL.mtdActualizar(objE, "T");
           
            
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Informacion Atualizada! " + objE.nombre + "' A sido Actualizado', 'success')", true);
        }
    }
}
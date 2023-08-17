using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Usuario
{
    public partial class RegistrarMascota : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuarios = int.Parse(Session["Usuario"].ToString());
            if (idUsuarios == 0)
            {
                Response.Redirect("../../../PaginaPrincipal.aspx");
            }
            next.ServerClick += new EventHandler(mtdRegistrar);
        }
        public void mtdRegistrar(object sender, EventArgs e)
        {
            ClMascotaL objMascotaL = new ClMascotaL();
            //string tipo = ddlGenero.Data;
            string nombreV = nombre.Value +raza.Value + ".png";
            string rutaImg = Path.Combine(Server.MapPath("../../imagenes/ImagenesMascota/"), nombreV);
            FlFotoM.SaveAs(rutaImg);
            objMascotaL.mtdRegistrar(nombre.Value, especie.Value,  raza.Value, Request.Form["pet-weight"], Request.Form["pet-gender"], nombreV, txtCondicion.Value,int.Parse( Session["Usuario"].ToString()));
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Bienvenido " + nombre.Value + "!', 'Haz sido Registrado en Consented Pets', 'success')", true);
            txtCondicion.Value = "";
            especie.Value = "";
            raza.Value = "";
            nombre.Value = "";
        }
    }
}
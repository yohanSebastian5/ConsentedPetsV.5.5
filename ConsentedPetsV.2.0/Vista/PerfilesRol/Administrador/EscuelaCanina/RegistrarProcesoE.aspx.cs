﻿using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina
{
    public partial class RegistrarProcesoE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuarios = int.Parse(Session["RolUsuario"].ToString());
            if (idUsuarios != 2)
            {
                Response.Redirect("../../../../PaginaPrincipal.aspx");
            }
            Regis.ServerClick += new EventHandler(mtdRegistrar);
        }
        public void mtdRegistrar(object sender, EventArgs e)
        {
            ClProcesosVetL objL = new ClProcesosVetL();
            ClProcesosVetE objE = new ClProcesosVetE();
            objE.nombre = txtNombre.Value;
            objE.descripcion = txtDescripcion.Value;
            string nombreV ="Escuela"+ txtNombre.Value + ".png";
            string rutaImg = Path.Combine(Server.MapPath("../../../imagenes/servicios/"), nombreV);
            FlImagenV.SaveAs(rutaImg);
            objE.foto = nombreV;
            objE.idVeterinaria = int.Parse(Session["Escuela"].ToString());
            objL.mtdRegistrarProcesoE(objE);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Registro Exitoso !', 'Proceso Registrado ', 'success')", true);
        }
    }
}
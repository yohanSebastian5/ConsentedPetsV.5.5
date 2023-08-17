using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador
{
    public partial class RegistrarVeterinaria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuarios = int.Parse(Session["RolUsuario"].ToString());
            if (idUsuarios != 2)
            {
                Response.Redirect("../../../PaginaPrincipal.aspx");
            }
            submit.ServerClick += new EventHandler(mtdRegistrar);
        }
        protected void mtdRegistrar(object sender, EventArgs e)
        {
            ClEstablecimientoL objEstaL = new ClEstablecimientoL();
            CLUsuarioL objUsuL = new CLUsuarioL();
            ClUsuarioE objUsuE = new ClUsuarioE();
            int valor = 1;
            string nombreV = valor + txtNombre.Value + txtTelefono.Value + ".png";
            string rutaImg = Path.Combine(Server.MapPath("../../imagenes/ImagenesEstablecimiento/"), nombreV);
            FlImagenV.SaveAs(rutaImg);
            objEstaL.mtdRegistrar(txtNombre.Value, txtDireccion.Value, txtTelefono.Value, txtEmail.Value, nombreV, valor);
            int tipo = 2;
            ClEstablecimientoE objEstablecimientoE = objEstaL.mtdListarVet(nombreV);
            objEstaL.mtdUsuarioVeterinaria(int.Parse(Session["Usuario"].ToString()), objEstablecimientoE.id);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Registro Exitoso !', 'Establecimiento Registrado ', 'success')", true);
        }
    }
}
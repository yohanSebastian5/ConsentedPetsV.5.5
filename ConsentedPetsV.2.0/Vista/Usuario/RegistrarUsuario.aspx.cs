using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using ConsentedPetsV._2._0;

namespace ProcsosAparteProyecto
{
    public partial class RegistrarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnRegistrar.ServerClick += new EventHandler(mtdRegistrar);
        }
        protected void mtdRegistrar(object sender, EventArgs e)
        {
            int tipo = 1;
            CLUsuarioL objUsuarioL = new CLUsuarioL();
            Encrypt encri = new Encrypt();
            ClUsuarioE objUsuarioE = new ClUsuarioE();
            string nombreV = txtNombre.Text + txtApellido.Text +txtTelefono.Text+ ".png";
            string rutaImg = Path.Combine(Server.MapPath("../imagenes/ImagenesUsuarios/"), nombreV);
            FlImagenU.SaveAs(rutaImg);
            objUsuarioE.email = txtEmail.Text;
            string contraseña = encri.cifrarT(txtContraseña.Text);
            objUsuarioE.contraseña= contraseña;
            objUsuarioL.mtdRegistrar(txtDocumento.Text, txtNombre.Text, txtApellido.Text, txtDireccion.Text, txtTelefono.Text, txtEmail.Text, nombreV, txtGenero.Text, contraseña);
            objUsuarioE= objUsuarioL.mtdRolU(objUsuarioE,tipo);
            objUsuarioL.mtdRol(objUsuarioE.idUsuario);
            if (tipo==1)
            {
                Session["RolUsuario"] = objUsuarioE.idRol;
                Session["Usuario"] = objUsuarioE.idUsuario;
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Bienvenido " + txtNombre.Text + "!', 'Registro Realizado con Exito', 'success')", true);
            }

        
        } 
    }
}
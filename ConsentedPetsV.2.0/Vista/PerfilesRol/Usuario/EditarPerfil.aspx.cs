using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Usuario
{
    public partial class EditarPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           


                int idUsuario = int.Parse(Session["Usuario"].ToString());
                idUsuario = 5;
                CLUsuarioL objU = new CLUsuarioL();
                ClUsuarioE objDatos = objU.mtdListarU(idUsuario);
                txtNombre.Text = objDatos.nombre;
                txtApellido.Text = objDatos.apellido;
                txtGenero.Text = objDatos.genero;
                txtTelefono.Text = objDatos.telefono;
                txtEmail.Text = objDatos.email;
                txtDireccion.Text = objDatos.direccion;
                txtContraseña.Text = objDatos.contraseña;
                string nombre = objDatos.foto;
                string ruta = "~/Vista/imagenes/ImagenesUsuarios/" + nombre;
                img.Src = ResolveUrl(ruta);
                nom.InnerText = objDatos.nombre;
                
            
        }
        [WebMethod]
        protected void btnAddMore_Click(object sender, EventArgs e)
        {
            ClUsuarioE objE = new ClUsuarioE();
            CLUsuarioL objL = new CLUsuarioL();
            objE.nombre = txtNombre.Text;
            objE.apellido = txtApellido.Text;
            objE.genero = txtGenero.Text;
            objE.telefono = txtTelefono.Text;
            objE.email = txtEmail.Text;
            objE.direccion = txtDireccion.Text;
            objE.contraseña = txtContraseña.Text;


            string rutaF = txtNombre.Text + txtApellido.Text + txtTelefono.Text + ".png";
            string rutaImg = Path.Combine(Server.MapPath("../imagenes/ImagenesUsuarios/"), rutaF);
            FlImagenV.SaveAs(rutaImg);
            objL.mtdActualizarDatos(objE);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Informacion Atualizada!', ''" + objE.nombre + "' A sido Actualizado', 'success')", true);


        }
    }
}

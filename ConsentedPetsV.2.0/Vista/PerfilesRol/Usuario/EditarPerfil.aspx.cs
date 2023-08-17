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
            int idUsuarios = int.Parse(Session["Usuario"].ToString());
            if (idUsuarios == 0)
            {
                Response.Redirect("../../../PaginaPrincipal.aspx");
            }

            if (!IsPostBack)
            {

                int idUsuario = int.Parse(Session["Usuario"].ToString());
                
                CLUsuarioL objU = new CLUsuarioL();
                Encrypt encry = new Encrypt();
                ClUsuarioE objDatos = objU.mtdListarU(idUsuario);
                txtNombre.Text = objDatos.nombre;
                txtDocumento.Text = objDatos.documento;
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
            
        }
      
        protected void btnAddMore_Click(object sender, EventArgs e)
        {
            ClUsuarioE objE = new ClUsuarioE();
            CLUsuarioL objL = new CLUsuarioL();
            string rutaF = txtNombre.Text + txtApellido.Text + txtTelefono.Text + ".png";
            string rutaImg = Path.Combine(Server.MapPath("~/Vista/imagenes/ImagenesUsuarios/"), rutaF);
            FlImagenV.SaveAs(rutaImg);
            objE.idUsuario = int.Parse(Session["Usuario"].ToString());
            objE.nombre = txtNombre.Text;
            objE.documento = txtDocumento.Text;
            objE.apellido = txtApellido.Text;
            objE.genero = txtGenero.Text;
            objE.telefono = txtTelefono.Text;
            objE.email = txtEmail.Text;
            objE.direccion = txtDireccion.Text;
            objE.contraseña = txtContraseña.Text;

            objE.foto = rutaF;
           
            objL.mtdActualizarDatos(objE);
            if (objL != null)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Informacion Atualizada " + objE.nombre + "!', 'A sido Actualizado', 'success')", true);

            }

        }
    }
}

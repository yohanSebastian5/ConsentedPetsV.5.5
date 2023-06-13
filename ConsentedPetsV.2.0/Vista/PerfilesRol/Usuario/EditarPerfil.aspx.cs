using ConsentedPets.Entidades;
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
    public partial class EditarPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuario = int.Parse(Session["Usuario"].ToString());
            CLUsuarioL objU = new CLUsuarioL();
            List<ClUsuarioE> listaU = objU.mtdListarU(idUsuario);


           
            txtNombre.Text = listaU[0].nombre;
            txtApellido.Text = listaU[0].apellido;
            txtGenero.Text = listaU[0].genero;
            txtTelefono.Text = listaU[0].telefono;
            txtEmail.Text = listaU[0].email;
            txtDireccion.Text = listaU[0].direccion;
            txtContraseña.Text = listaU[0].contraseña;

            if (listaU.Count > 0)
            {
                string nombre = listaU[0].foto;
                string ruta = "~/Vista/imagenes/ImagenesUsuarios/" + nombre;
                img.Src = ResolveUrl(ruta);
            }
            repNom.DataSource = listaU;
            repNom.DataBind();
        }

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
            


            //string nombreV = 1 + txtNombre.Text + txtTelefono.Text + ".png";
            //string rutaImg = Path.Combine(Server.MapPath("~/Vista/imagenes/ImagenesEstablecimiento/"), nombreV);
            //FlImagenV.SaveAs(rutaImg);
            //objL.mtdActualizar(objE, "V");
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Informacion Atualizada!', ''" + objE.nombre + "' A sido Actualizado', 'success')", true);


        }
    }
}
using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPets.Vista.PerfilesRol.Administrador.EscuelaCanina
{
    public partial class EditarPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuarios = int.Parse(Session["RolUsuario"].ToString());
            if (idUsuarios != 2)
            {
                Response.Redirect("../../../../PaginaPrincipal.aspx");
            }
            if (!IsPostBack)
            {
                int clase = 1;
                ClEstablecimientoL objEstaL = new ClEstablecimientoL();
                ClEstablecimientoE objEstaE = objEstaL.mtdListarVet("", "Escuela", int.Parse(Session["Escuela"].ToString()), clase);
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
            string foto = "";

            if (FlImagenV.HasFile)
            {

                string nombreV = 2 + txtNombre.Text + txtTelefono.Text + ".png";
                string rutaImg = Path.Combine(Server.MapPath("~/Vista/imagenes/ImagenesEstablecimiento/"), nombreV);
                FlImagenV.SaveAs(rutaImg);
                foto = nombreV;
            }
            else
            {
                foto = Session["foto"].ToString();
            }

            objE.id = int.Parse(Session["Escuela"].ToString());
       
            objE.foto = foto;
            objL.mtdActualizar(objE, "E");
       }
    }
}
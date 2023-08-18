using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
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
        public static bool ValidarNumeroDigitos(string input, int longitudMinima, int longitudMaxima)
        {
            int longitud = input.Length;
            return longitud >= longitudMinima && longitud <= longitudMaxima;
        }
        protected void mtdRegistrar(object sender, EventArgs e)
        {
            if (txtDocumento.Text !=""|| txtNombre.Text != "" || txtApellido.Text != "" || txtDireccion.Text != "" ||txtTelefono.Text != "" ||txtEmail.Text != "" ||txtGenero.Text != "" ||txtContraseña.Text != "" || FlImagenU.HasFile)
            {
                if (ValidarNumeroDigitos(txtDocumento.Text,8,11))
                {
                    ClUsuarioE objUsuE = new ClUsuarioE();
                    CLUsuarioL objUsuL = new CLUsuarioL();
                    objUsuE.email = txtEmail.Text;
                    objUsuE = objUsuL.mtdRolU(objUsuE, 1);

                    if (objUsuE.idUsuario == 0)
                    {

                        int tipo = 1;
                        CLUsuarioL objUsuarioL = new CLUsuarioL();
                        Encrypt encri = new Encrypt();
                        ClUsuarioE objUsuarioE = new ClUsuarioE();
                        string nombreV = txtNombre.Text + txtApellido.Text + txtTelefono.Text + ".png";
                        string rutaImg = Path.Combine(Server.MapPath("../imagenes/ImagenesUsuarios/"), nombreV);
                        FlImagenU.SaveAs(rutaImg);
                        objUsuarioE.email = txtEmail.Text;
                        string contraseña = encri.cifrarT(txtContraseña.Text);
                        objUsuarioE.contraseña = contraseña;
                        objUsuarioL.mtdRegistrar(txtDocumento.Text, txtNombre.Text, txtApellido.Text, txtDireccion.Text, txtTelefono.Text, txtEmail.Text, nombreV, txtGenero.Text, contraseña);
                        objUsuarioE = objUsuarioL.mtdRolU(objUsuarioE, tipo);
                        objUsuarioL.mtdRol(objUsuarioE.idUsuario);
                        if (tipo == 1)
                        {
                            Session["RolUsuario"] = 1;
                            Session["Usuario"] = objUsuarioE.idUsuario;
                            Session["NombreUsuario"] = objUsuarioE.nombre;

                            Response.Redirect("../../Principal.aspx");
                        }
                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Correo Ya Registrado!', 'Ya se Encuentra un Usuario Registrado con este correo ', 'warning')", true);

                    }

                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Documento No valido!', 'El Documento debe contener solo numeros y con una longitud de 10 Digitos', 'warning')", true);

                }

            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Espacios en Blanco!', 'Todos los Datos deben ser Llenados', 'warning')", true);

            }



            ////txtNombre.Text = "";
            ////txtApellido.Text = "";
            ////txtTelefono.Text = "";
            ////txtContraseña.Text = "";
            ////txtDireccion.Text = "";
            ////txtDocumento.Text = "";
            ////txtEmail.Text = "";
            ////txtGenero.Text = "";
        } 
    }
}
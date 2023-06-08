using ConsentedPets.Datos;
using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPets.Vista.Veterinaria
{
    public partial class RegistrarVeterinaria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (int.Parse(Session["RolUsuario"].ToString()) == 1)
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡No Registrado como Administrador !', 'Registre un Establecimiento', 'warning')", true);
                }

                ClEstablecimientoL objCateg = new ClEstablecimientoL();
                List<ClEstablecimientoE> listCat = new List<ClEstablecimientoE>();
                listCat = objCateg.mdtListar();

                ddlTipo.DataSource = listCat;
                ddlTipo.DataTextField = "nombre";
                ddlTipo.DataValueField = "id";
                ddlTipo.DataBind();
                ddlTipo.Items.Insert(0, new ListItem("Tipo de Establecimiento: ", "0"));

            }

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ClEstablecimientoL objEstaL = new ClEstablecimientoL();
            CLUsuarioL objUsuL = new CLUsuarioL();
            ClUsuarioE objUsuE = new ClUsuarioE();
            
           
            int valor = int.Parse(ddlTipo.SelectedValue.ToString());
            string nombreV = valor + txtNombre.Text+txtTelefono.Text + ".png";
            string rutaImg = Path.Combine(Server.MapPath("../imagenes/ImagenesEstablecimiento/"),  nombreV);
            FlImagenV.SaveAs(rutaImg);
            objEstaL.mtdRegistrar(txtNombre.Text,txtDireccion.Text,txtTelefono.Text,txtEmail.Text,nombreV,valor);
            int tipo= 2;
            ClEstablecimientoE objEstablecimientoE = objEstaL.mtdListarVet(nombreV);
            objEstaL.mtdUsuarioVeterinaria(int.Parse(Session["Usuario"].ToString()),objEstablecimientoE.id);
            if (int.Parse(Session["RolUsuario"].ToString()) == 1)
            {
                objUsuL.mtdRol( int.Parse(Session["Usuario"].ToString()),tipo);
            }
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Registro Exitoso !', 'Establecimiento Registrado ', 'success')", true);
        }
    }
}
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
            //int idUsuarios = int.Parse(Session["RolUsuario"].ToString());
            //if (idUsuarios != 1)
            //{
            //    Response.Redirect("../../../PaginaPrincipal.aspx");
            //}
            if (!IsPostBack)
            {
               
                   

                ClEstablecimientoL objCateg = new ClEstablecimientoL();
                List<ClEstablecimientoE> listCat = new List<ClEstablecimientoE>();
                listCat = objCateg.mdtListar();

                ddlTipo.DataSource = listCat;
                ddlTipo.DataTextField = "nombre";
                ddlTipo.DataValueField = "id";
                ddlTipo.DataBind();
                ddlTipo.Items.Insert(0, new ListItem("Tipo de Establecimiento: ", "0"));



                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡No Registrado como Administrador !', 'Registre un Establecimiento Para ser Administrador', 'warning')", true);

            }
            btnvolver2.ServerClick += new EventHandler(btnVolver_Click);
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (FlImagenV.HasFile)
            {
                int valor = int.Parse(ddlTipo.SelectedValue.ToString());
                if (valor!=0)
                {
                    ClEstablecimientoL objEstaL = new ClEstablecimientoL();
                    CLUsuarioL objUsuL = new CLUsuarioL();
                    string nombreV = valor + txtNombre.Text + txtTelefono.Text + ".png";
                    string rutaImg = Path.Combine(Server.MapPath("../imagenes/ImagenesEstablecimiento/"), nombreV);
                    FlImagenV.SaveAs(rutaImg);
                    objEstaL.mtdRegistrar(txtNombre.Text, txtDireccion.Text, txtTelefono.Text, txtEmail.Text, nombreV, valor);
                    int tipo = 2;
                    ClEstablecimientoE objEstablecimientoE = objEstaL.mtdListarVet(nombreV);
                    objEstaL.mtdUsuarioVeterinaria(int.Parse(Session["Usuario"].ToString()), objEstablecimientoE.id);
                    if (int.Parse(Session["RolUsuario"].ToString()) == 1)
                    {
                        objUsuL.mtdRol(int.Parse(Session["Usuario"].ToString()), tipo);
                        Session["RolUsuario"] = 2;
                    }
                    Response.Redirect("../PerfilesRol/TutorialAdmin.aspx");
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Tipo de Establecimiento no Seleccionado!', 'Seleccione el tipo de establecimiento a Registrar', 'warning')", true);

                }

            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Imagen no Seleccionada!', 'Ingrese una Imagen Para su Establecimiento', 'warning')", true);

            }

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("../PerfilesRol/ElegirPErfil.aspx");
        }
    }
}
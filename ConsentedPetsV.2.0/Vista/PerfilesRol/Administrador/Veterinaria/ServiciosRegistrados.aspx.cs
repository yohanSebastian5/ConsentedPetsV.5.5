using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using ConsentedPets.Vista.PerfilesRol.Administrador.Veterinaria;
using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.Veterinaria
{
    public partial class RegistrosRegistrados : System.Web.UI.Page
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
                int idVeterinaria = int.Parse(Session["Veterinaria"].ToString());
                idVeterinaria = 1;
                ClServicioVetL objVet = new ClServicioVetL();
                List<ClServicioVeterinariaE> lista = objVet.mtdRepeater(idVeterinaria);

                repServicio.DataSource = lista;
                repServicio.DataBind();

            }


        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            ClServicioVeterinariaE objE = new ClServicioVeterinariaE();
            ClServicioVetL objL = new ClServicioVetL();
            string foto="";
            if (FileUpload1.HasFile)
            {

                string nombreV = txtNombre.Text + txtPrecio + ".png";
                string rutaImg = Path.Combine(Server.MapPath("../../../imagenes/servicios/"), nombreV);
                FileUpload1.SaveAs(rutaImg);
                foto = nombreV;
            }
            else
            {
                foto = Session["foto"].ToString();
            }
            objE.idServicioV = int.Parse(Session["Servicio"].ToString());
            objE.precio = int.Parse(txtPrecio.Text);
            objE.descripcion = txtDescripcion.Text;
            objE.nombre = txtNombre.Text;
            objE.id= int.Parse(Session["Eliminar"].ToString());
            objE.idVeterinaria = int.Parse(Session["Veterinaria"].ToString());
            objE.foto = foto;
            objL.mtdActualizar(objE);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Servicio Actuallizado!', 'Se ha Actualizado con Exito', 'success')", true);

        }
        [WebMethod]
        public static void ListarV(string tipo)
        {
            HttpContext.Current.Session["Eliminar"] = tipo;
        }
        [WebMethod]
        public static List<ClServicioVeterinariaE> cargardatos()
        {
            int tipo = int.Parse(HttpContext.Current.Session["Eliminar"].ToString());
            List<ClServicioVeterinariaE> lista = null;
            ClServicioVetL objVet = new ClServicioVetL();
            lista = objVet.mtdRepeater(tipo, 1);
            HttpContext.Current.Session["Servicio"] = lista[0].idServicioV;
            HttpContext.Current.Session["foto"] = lista[0].foto;
            return lista;
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ClEliminarL objL = new ClEliminarL();
            ClEliminarE objE = new ClEliminarE();
            int id= int.Parse(Session["Eliminar"].ToString());
            objL.mtdEliminarServicioV(id);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Servicio Eliminado!', 'Se ha Eliminado con Exito', 'success')", true);


        }
    }
}
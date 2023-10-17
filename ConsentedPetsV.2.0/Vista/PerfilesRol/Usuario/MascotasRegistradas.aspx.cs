using ConsentedPets.Entidades;
using ConsentedPets.Logica;
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

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Usuario
{
    public partial class MascotasRegistradas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuarios = int.Parse(Session["Usuario"].ToString());
            if (idUsuarios == 0)
            {
                Response.Redirect("../../../PaginaPrincipal.aspx");
            }
            int idUsuario = int.Parse(Session["Usuario"].ToString());
            ClMascotaL objData = new ClMascotaL();
            List<ClMascotaE> listaMascota = objData.mtdListarMascota(idUsuario);
            repMascota.DataSource = listaMascota;
            repMascota.DataBind();
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            ClMascotaE objE = new ClMascotaE();
            ClMascotaL objL = new ClMascotaL();
            string foto = "";
            if (FileUpload1.HasFile)
            {

                string nombreV = txtNombre.Text + txtRaza + ".png";
                string rutaImg = Path.Combine(Server.MapPath("../../../imagenes/servicios/"), nombreV);
                FileUpload1.SaveAs(rutaImg);
                foto = nombreV;
            }
            else
            {
                foto = Session["foto"].ToString();
            }
            objE.idUsuario = int.Parse(Session["Usuario"].ToString());
            objE.raza = txtRaza.Text;
            objE.genero= genero;
            objE.nombre = txtNombre.Text;
            objE.especie= txtEspecie.Text;
            objE.edad= txtEdad.Text;
            objE.condicionMedica= txtCondicion.Text;
            objE.idMascota = int.Parse(Session["Eliminar"].ToString());
            objE.foto = foto;
            objL.mtdEditar(objE);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Mascota Actuallizada!', 'Se ha Actualizado con Exito', 'success')", true);

        }

        [WebMethod]
        public static void ListarV(string tipo)
        {
            HttpContext.Current.Session["Eliminar"] = tipo;
        }
       static string genero;
        [WebMethod]
        public static List<ClMascotaE> cargardatos()
        {
            int idMascota = int.Parse(HttpContext.Current.Session["Eliminar"].ToString());
            int idUsuario = int.Parse(HttpContext.Current.Session["Usuario"].ToString());
            List<ClMascotaE> lista = null;
            ClMascotaL objVet = new ClMascotaL();
            lista = objVet.mtdListarMascota(idUsuario,idMascota);
            HttpContext.Current.Session["foto"] = lista[0].foto;
            genero = lista[0].genero;
            return lista;
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ClMascotaL objL = new ClMascotaL();
            int id = int.Parse(Session["Eliminar"].ToString());
            objL.mtdEliminar(id);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Servicio Eliminado!', 'Se ha Eliminado con Exito', 'success')", true);


        }
    }
}
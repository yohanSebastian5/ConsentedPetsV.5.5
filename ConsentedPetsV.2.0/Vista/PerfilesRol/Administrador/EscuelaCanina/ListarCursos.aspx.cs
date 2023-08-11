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

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina
{
    public partial class ListarCursos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        [WebMethod]
        public static List<ClServicioVeterinariaE> mtdLista()
        {
            int tipo = int.Parse(HttpContext.Current.Session["Servicio"].ToString());
            ClProcesosVetL objL = new ClProcesosVetL();
            List<ClServicioVeterinariaE> lista = objL.mtdListarCurso(tipo);
            return lista;
        }
        [WebMethod]
        public static void GuardarIdPersonal(string id)
        {
            HttpContext.Current.Session["Eliminar"] = id;
        }
        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ClEliminarL objL = new ClEliminarL();
            int idE = int.Parse(HttpContext.Current.Session["Eliminar"].ToString());
            objL.mtdEliminarCurso(idE);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Actualizacion Exitosa !', 'Curso Eliminado', 'success')", true);

        }
        [WebMethod]
        public static List<ClServicioVeterinariaE> cargardatos(int id)
        {
            ClProcesosVetL objL = new ClProcesosVetL();
            List<ClServicioVeterinariaE> lista = objL.mtdListarCurso(id,1);

            string ruta= "../../../imagenes/ServicioCursosE/"+ lista[0].foto;
            lista[0].foto = ruta;
            return lista;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClProcesosVetL objL = new ClProcesosVetL();
            ClServicioVeterinariaE objE = new ClServicioVeterinariaE();
            objE.idCurso= int.Parse(Session["Eliminar"].ToString());
            objE.nombre = txtNombre.Text;
            objE.descripcion = txtDescripcion.Text;
            objE.precio = int.Parse(txtPrecio.Text);

            if (FileUpload1.HasFile)
            {
                // Procesar el archivo cargado
                string nombreArchivo = Path.GetFileName(FileUpload1.FileName);
                string rutaArchivo = Server.MapPath("~/Uploads/") + nombreArchivo; // Cambiar con la ruta deseada

                FileUpload1.SaveAs(rutaArchivo);

                // Realizar otras operaciones con el archivo
            }
            else
            {
                // Usar el nombre de la imagen preexistente para el procesamiento en el servidor
                string nombreImagenPreexistente = imagen.Src;
                // Realizar operaciones con el nombre de la imagen preexistente
            }


        }
    }
}
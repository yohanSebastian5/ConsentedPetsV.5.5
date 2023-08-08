using ConsentedPetsV._2._0.Datos;
using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina
{
    public partial class ListarActividades1 : System.Web.UI.Page
    {

        ClProcesosVetL objL = new ClProcesosVetL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       [WebMethod]
        public static List<ClServicioVeterinariaE> mtdListar()
        {
            ClProcesosVetL objL = new ClProcesosVetL();
            List<ClServicioVeterinariaE> lista = objL.mtdListarActividad( int.Parse(HttpContext.Current.Session["Escuela"].ToString()));
        
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
            int tipo = int.Parse(HttpContext.Current.Session["Tipo"].ToString());
            int idE = int.Parse(HttpContext.Current.Session["Eliminar"].ToString());
            objL.mtdEliminarActividad(idE);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Actualizacion Exitosa !', 'Actividad Eliminada', 'success')", true);
        }
        [WebMethod]
        public static List<ClServicioVeterinariaE> cargardatos(int id)
        {
            var Page = HttpContext.Current.Handler as ListarActividades1;
            List<ClServicioVeterinariaE> list = Page.objL.mtdListarActividad(id,1); ;
            return list;
        }

        protected void calenario_SelectionChanged(object sender, EventArgs e)
        {
            txtFecha.Text = calenario.SelectedDate.ToString("yyyy-MM-dd");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClProcesosVetL objL = new ClProcesosVetL();
            ClServicioVeterinariaE objE = new ClServicioVeterinariaE();
            objE.nombre = txtNombre.Text;
            objE.descripcion = txtDescripcion.Text;
            objE.fecha = txtFecha.Text;
            objE.idServicioV = int.Parse(Session["Escuela"].ToString());
            objE.id=  int.Parse(Session["Eliminar"].ToString());
            objL.mtdRegistrarActividad(objE);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Actualizacion Exitosa !', 'Actividad Actualizada', 'success')", true);

        }

       

        
    }
}
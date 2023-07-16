using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.Veterinaria
{
    public partial class ListarVeterinarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<ClUsuarioE> mtdLista()
        {
            int tipo=int.Parse(HttpContext.Current.Session["Veterinaria"].ToString());
            CLUsuarioL objUsuarioL = new CLUsuarioL();
            List<ClUsuarioE> listaPersonal = objUsuarioL.mtdRepeater(tipo);
            return listaPersonal;
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
            objL.mtdEliminarUsuarioEs(idE, "Veterinaria");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Actualizacion Exitosa !', 'Veterinario Eliminado', 'success')", true);

        }
        [WebMethod]
        public static List<ClUsuarioE> cargardatos(int id)
        {

            int tipo = int.Parse(HttpContext.Current.Session["Veterinaria"].ToString());
            CLUsuarioL objUsuarioL = new CLUsuarioL();
            List<ClUsuarioE> listaPersonal = objUsuarioL.mtdRepeater(tipo, 3, id);
            return listaPersonal;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CLUsuarioL objL = new CLUsuarioL();
            ClUsuarioE objE = new ClUsuarioE();
            objE.profesion = txtProfesion.Text;
            objE.especializacion = txtEspecializacion.Text;
            objE.experiencia = txtExperiencia.Text;
            objE.idUsuario = int.Parse(Session["Eliminar"].ToString());
            objL.mtdActualizarEmp(objE);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Actualizacion Exitosa !', 'Veterinario Actualizado', 'success')", true);

        }
    }
}
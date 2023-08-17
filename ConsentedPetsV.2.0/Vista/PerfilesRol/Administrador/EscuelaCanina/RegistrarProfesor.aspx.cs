using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina
{
    public partial class RegistrarProfesor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuarios = int.Parse(Session["UsRolUsuariouario"].ToString());
            if (idUsuarios != 2)
            {
                Response.Redirect("../../../PaginaPrincipal.aspx");
            }
        }
        [WebMethod]
        public static ClUsuarioE cargardatos(string docum)
        {

            int tipo = 2;
            ClUsuarioE objUsuE = new ClUsuarioE();
            CLUsuarioL objUsuL = new CLUsuarioL();
            objUsuE.documento = docum;
            objUsuE = objUsuL.mtdRolU(objUsuE, tipo);
            return objUsuE;
        }
        [WebMethod]
        public static void ActualizarDatos(string docum, string espes, string expes, string profes)
        {
            int tipo = 2;
            int rol = 3;
            ClUsuarioE objUsuE = cargardatos(docum);
            CLUsuarioL objUsuL = new CLUsuarioL();
            objUsuE.documento = docum;
            objUsuE = objUsuL.mtdRolU(objUsuE, tipo);
            objUsuE.especializacion = espes;
            objUsuE.experiencia = expes;
            objUsuE.profesion = profes;
            objUsuL.mtdActualizarEmp(objUsuE);
            objUsuL.mtdRol(objUsuE.idUsuario, rol);
            objUsuL.mtdUsuarioE(objUsuE.idUsuario, int.Parse(HttpContext.Current.Session["Escuela"].ToString()),2);
           

                //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡El Profesor " + objE.nombre + "!', 'A sido Actualizado', 'success')", true);
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Registro Exitoso !', 'Proceso Registrado ', 'success')", true);


        }

        public string mtdGuardar()
        {
            string valor = Session["valor"].ToString();
            return valor;
        }
        [WebMethod]
        public static void ProcesarValor(string valor)
        {
            HttpContext.Current.Session["valor"] = valor;
        }
    }
}
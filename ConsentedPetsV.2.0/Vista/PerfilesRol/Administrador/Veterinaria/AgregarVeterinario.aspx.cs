using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using ConsentedPets.Entidades;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.Veterinaria
{
    
    public partial class AgregarVeterinario : System.Web.UI.Page
    {
       
        CLUsuarioL objUsuL = new CLUsuarioL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static ClUsuarioE cargardatos(string docum)
        {
            
            int tipo = 2;
            ClUsuarioE objUsuE = new ClUsuarioE();
            CLUsuarioL objUsuL = new CLUsuarioL();
            objUsuE.documento=docum;
            objUsuE = objUsuL.mtdRolU(objUsuE,tipo);
            return objUsuE;
        }
        [WebMethod]
        public static void ActualizarDatos(string docum,string espes,string expes,string profes)
        {
            int tipo = 2;
            int rol = 4;
            ClUsuarioE objUsuE = cargardatos(docum);
            CLUsuarioL objUsuL = new CLUsuarioL();
            objUsuE.documento = docum;
            objUsuE = objUsuL.mtdRolU(objUsuE, tipo);
            objUsuE.especializacion= espes;
            objUsuE.experiencia = expes;
            objUsuE.profesion = profes;
            objUsuL.mtdActualizarEmp(objUsuE);
            objUsuL.mtdRol(objUsuE.idUsuario,rol);
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
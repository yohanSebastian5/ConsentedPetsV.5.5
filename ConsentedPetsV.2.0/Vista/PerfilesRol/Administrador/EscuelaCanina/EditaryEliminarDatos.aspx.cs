using ConsentedPets.Entidades;
using ConsentedPets.Logica;
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
    public partial class EditaryEliminarDatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlTipo.Items.Insert(0, new ListItem("Servicios Registrados ", "0"));
                ddlTipo.Items.Insert(0, new ListItem("Cursos Registrados ", "1"));
                ddlTipo.Items.Insert(0, new ListItem("Mascotas Registrados ", "2"));
                ddlTipo.Items.Insert(0, new ListItem("Matriculas Registrados ", "3"));
                ddlTipo.Items.Insert(0, new ListItem("Procesos Registrados ", "4"));
            }
        }
      

        protected void ddlTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idCategoria = int.Parse(ddlTipo.SelectedValue.ToString());
            Session["Tipo"]=idCategoria;



        }
        [WebMethod]
        public static List<ClUsuarioE> mtdLista()
        {
            int id = int.Parse(HttpContext.Current.Session["Tipo"].ToString());
            int escuela = int.Parse(HttpContext.Current.Session["Escuela"].ToString());
            List<ClUsuarioE> listaPersonal = null;
            if (id == 1)
            {
                int tipo = int.Parse(HttpContext.Current.Session["Escuela"].ToString());
                CLUsuarioL objUsuarioL = new CLUsuarioL();
                listaPersonal = objUsuarioL.mtdRepeater(1, 1);


            }




            return listaPersonal;
        }

     

    }
}
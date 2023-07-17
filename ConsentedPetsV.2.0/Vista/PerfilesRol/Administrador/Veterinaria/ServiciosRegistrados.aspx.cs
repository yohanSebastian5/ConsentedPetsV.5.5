using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using ConsentedPets.Vista.PerfilesRol.Administrador.Veterinaria;
using ConsentedPetsV._2._0.Entidades;
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
    public partial class RegistrosRegistrados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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

        }
        [WebMethod]
        public static void ListarV(string tipo)
        {
            HttpContext.Current.Session["Eliminar"] = tipo;
        }
        [WebMethod]
        public static List<ClServicioVeterinariaE> cargardatos(string tipo)
        {
            List<ClServicioVeterinariaE> lista= null;
            try
            {
                ClServicioVetL objVet = new ClServicioVetL();
                lista= objVet.mtdRepeater(int.Parse(tipo), 1);
               ;
            }
            catch (Exception e)
            {

                Console.WriteLine(e.Message);
                
            }
            return lista;
        }
    }
}
using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.Veterinaria
{
    public partial class RegistrosRegistrados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

    
                int idVeterinaria = int.Parse(Session["Veterinaria"].ToString());
            idVeterinaria = 1;
                ClServicioVetL objVet = new ClServicioVetL();
                List<ClServicioVeterinariaE> lista = objVet.mtdRepeater(idVeterinaria);
                
                repServicio.DataSource = lista;
                repServicio.DataBind();

            
        }
    }
}
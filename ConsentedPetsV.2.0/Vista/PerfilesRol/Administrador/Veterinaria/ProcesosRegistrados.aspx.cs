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
    public partial class ProcesosRegistrados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuarios = int.Parse(Session["RolUsuario"].ToString());
            if (idUsuarios != 2)
            {
                Response.Redirect("../../../../PaginaPrincipal.aspx");
            }
            int idVeterinaria = int.Parse(Session["Veterinaria"].ToString());
            idVeterinaria = 1;
                ClProcesosVetL objProcesos = new ClProcesosVetL();
                List<ClProcesosVetE> listaProcesos = objProcesos.mtdProcesos(idVeterinaria);
                repProcesos.DataSource = listaProcesos;
                repProcesos.DataBind();                 

        }
    }
}
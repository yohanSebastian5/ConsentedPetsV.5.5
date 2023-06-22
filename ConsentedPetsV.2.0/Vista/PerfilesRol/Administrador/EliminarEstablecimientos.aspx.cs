using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Collections.Specialized.BitVector32;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador
{
    public partial class EliminarEstablecimientos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlTipo.Items.Insert(0, new ListItem("Establecimientos Registrados: ", "0"));
                ddlTipo.Items.Insert(1, new ListItem("Veterinarias Registrados ", "1"));
                ddlTipo.Items.Insert(2, new ListItem("Tiendas Registrados ", "2"));
                ddlTipo.Items.Insert(3, new ListItem("Escuelas Registrados ", "3"));
                ddlTipo.DataBind();
            }
            
        }
      


        [WebMethod]
        public static List<ClRepeaterEstablecimientoE> mtdLista()
        {
            int id = int.Parse(HttpContext.Current.Session["Tipo"].ToString());
            
            int usuario = int.Parse(HttpContext.Current.Session["Usuario"].ToString());

            List<ClRepeaterEstablecimientoE> lista = null;
            if (id == 2)
            {
                ClRepeaterEstablecimientoL objVet = new ClRepeaterEstablecimientoL();
                lista = objVet.mtdRepeater(id, usuario, 1);
            }
            else if (id == 1)
            {
                ClRepeaterEstablecimientoL objVet = new ClRepeaterEstablecimientoL();
                lista = objVet.mtdRepeater(id, usuario);
            }
            else if (id == 3)
            {

                ClRepeaterEstablecimientoL objVet = new ClRepeaterEstablecimientoL();
                lista = objVet.mtdRepeater(id, usuario, 2);
            }




            return lista;
        }
        protected void ddlTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idCategoria = int.Parse(ddlTipo.SelectedValue.ToString());
            Session["tipo"] = idCategoria;
        }
        [WebMethod]
        protected void GuardarIdPersonal(string id)
        {
           HttpContext.Current.Session["Eliminar"]=id;
        }
        protected void btnEliminar_Click(object sender, EventArgs e)
        {
           
        }
    }
}
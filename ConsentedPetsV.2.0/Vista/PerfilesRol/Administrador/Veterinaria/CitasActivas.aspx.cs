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
    public partial class CitasActivas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuarios = int.Parse(Session["RolUsuario"].ToString());
            if (idUsuarios != 2)
            {
                Response.Redirect("../../../../PaginaPrincipal.aspx");
            }
            if (!IsPostBack)
            {
                ddlEstado.Items.Insert(0, new ListItem("Seleccione Estado: ", "0"));
                ddlEstado.Items.Insert(1, new ListItem("Pendiente ", "1"));
                ddlEstado.Items.Insert(2, new ListItem("Realizado ", "2"));
                ddlEstado.Items.Insert(3, new ListItem("Cancelado", "3"));
                ddlEstado.DataBind();
            }
        }
        [WebMethod]
        public static List<ClCitaE> mtdLista()
        {
            int tipo = int.Parse(HttpContext.Current.Session["Veterinaria"].ToString());
            ClCitaL objCitaL = new ClCitaL();
            List<ClCitaE> lista = objCitaL.mtdListar(tipo,1);
            return lista;
        }
        [WebMethod]
        public static void GuardarIdPersonal(string id)
        {
            HttpContext.Current.Session["Eliminar"] = id;
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            int tipo = int.Parse(Session["Eliminar"].ToString());
            ClCitaL objL = new ClCitaL();

            int estado = int.Parse(ddlEstado.SelectedValue.ToString());
            if (estado!=0)
            {
             
                string es;
                if (estado == 1)
                {
                    es = "Pendiente";
                }
                else if (estado == 2)
                {
                    es = "Realizado";
                }
                else
                {
                    es = "Cancelado";
                }
                objL.mtdActualizarCitaEstado(tipo, es);
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Actualizacion Exitosa !', 'La Cita Cambio de estado', 'success')", true);
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡ Selecciones un Estado !', 'Estado no Seleccionado', 'warning')", true);
            }


        }
    }
}
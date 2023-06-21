using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PaginaTienda.PaginaTienda
{
    public partial class PaginaTienda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idTienda = int.Parse(Session["Tienda"].ToString());
            int idUsuario = int.Parse(Session["Usuario"].ToString());
            idTienda = 1;
            idUsuario = 1;

            ClMascotaL objMascotaL = new ClMascotaL();
            List<ClMascotaE> lista = objMascotaL.mtdMascotaVenta(idTienda);
            repMascotaVenta.DataSource = lista;
            repMascotaVenta.DataBind();

            ClCategoriaL obj = new ClCategoriaL();
            List<ClCategoriaE> listaC = obj.mtdCategoria(idTienda);
            repCateg.DataSource = listaC;
            repCateg.DataBind();
        }



    }
}
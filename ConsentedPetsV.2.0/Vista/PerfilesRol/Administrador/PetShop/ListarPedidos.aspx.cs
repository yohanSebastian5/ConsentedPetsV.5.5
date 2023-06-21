using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.PetShop
{
    public partial class ListarPedidos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClProductoL objL = new ClProductoL();
            List<CLProductoE> lista = objL.mtdListarPedidos(int.Parse(Session["Tienda"].ToString()));
            repCard.DataSource = lista;
            repCard.DataBind();
        }
    }
}
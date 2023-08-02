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

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.PetShop
{
    public partial class ProductosRegistrados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idTienda = int.Parse(Session["Tienda"].ToString());
            int idUsuario = int.Parse(Session["Usuario"].ToString());
            idTienda = 1;
            idUsuario = 19;

           

            ClCategoriaL obj = new ClCategoriaL();
            List<ClCategoriaE> listaC = obj.mtdCategoria(idTienda);
            repCateg.DataSource = listaC;
            repCateg.DataBind();
        }
        [WebMethod]
        public static void ListarV(string tipo)
        {
            HttpContext.Current.Session["idCategoriaPS"] = tipo;

        }

        protected void btnProductos_Click(object sender, EventArgs e)
        {
            ClProductoL objPL = new ClProductoL();
            List<ClProductoE> listaP = objPL.mtdProducto(int.Parse(Session["idCategoriaPS"].ToString()));
            repProduc.DataSource = listaP;
            repProduc.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClProductoL objPL = new ClProductoL();
            List<ClProductoE> listaP = objPL.mtdProducto(int.Parse(Session["idCategoriaPS"].ToString()));
            repProduc.DataSource = listaP;
            repProduc.DataBind();
        }
    }
}
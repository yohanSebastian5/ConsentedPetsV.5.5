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
using System.Web.UI.HtmlControls;
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

            //if (!IsPostBack)
            //{
            //    repCateg.ItemDataBound += repCateg_ItemDataBound;
            //    CargarDatosRepeater();
            //}

            
        }


        //private int ObtenerIdCategoriaSeleccionada()
        //{
        //    // Aquí puedes obtener el ID de la categoría seleccionada
        //    // Puedes obtenerlo a partir del evento del enlace de categoría en el repeater "repCateg"

        //    // Por ejemplo, supongamos que tienes un evento Click en el enlace de categoría
        //    // y tienes un campo oculto llamado "hdnCategoriaSeleccionada" para almacenar el ID de la categoría seleccionada

        //    int idCategoriaSeleccionada = 0;

        //    // Verifica si se ha seleccionado una categoría
        //    if (hdnCategoriaSeleccionada.Value != "")
        //    {
        //        // Si se seleccionó una categoría, obtén el ID de la categoría desde el campo oculto
        //        idCategoriaSeleccionada = int.Parse(hdnCategoriaSeleccionada.Value);
        //    }

        //    return idCategoriaSeleccionada;
        //}
        //protected void repCateg_ItemDataBound(object sender, RepeaterItemEventArgs e)
        //{
        //    if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        //    {
        //        // Obtener el enlace "idCategoria" del elemento actual del repeater
        //        HtmlAnchor enlaceCategoria = (HtmlAnchor)e.Item.FindControl("idCategoria");

        //        // Asignar el atributo "data-id" con el valor del ID de la categoría
        //        ClCategoriaE categoria = (ClCategoriaE)e.Item.DataItem;
        //        enlaceCategoria.Attributes["data-id"] = categoria.idCategoriaPS.ToString();
        //    }
        //}
        //protected void repProduc_ItemDataBound(object sender, RepeaterItemEventArgs e)
        //{
        //    if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        //    {
        //        // Obtener el ID de la categoría seleccionada
        //        int idCategoria = ObtenerIdCategoriaSeleccionada(); // Implementa el método para obtener el ID de la categoría seleccionada

        //        // Llamar al método en la capa de datos para obtener los productos de la categoría seleccionada
        //        ClProductoL objPL = new ClProductoL();
        //        List<ClProductoE> listaProductos = objPL.mtdProducto(idCategoria);

        //        // Asignar los datos al Repeater "repProduc"
        //        Repeater repProduc = (Repeater)sender;
        //        repProduc.DataSource = listaProductos;
        //        repProduc.DataBind();
        //    }
        //}
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
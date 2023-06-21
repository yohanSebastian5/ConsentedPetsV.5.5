using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.PetShop
{
    public partial class RegistrarProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClProductoL objL = new ClProductoL();
                List<ClProductoE> lista = objL.mtdListarCategoria(1);

                if (lista.Count != 0)
                {
                    ddlCategoria.DataSource = lista;
                    ddlCategoria.DataTextField = "nombreC";
                    ddlCategoria.DataValueField = "idCategoria";
                    ddlCategoria.DataBind();

                    ddlCategoria.Items.Insert(0, new ListItem("Seleccione La Categoria: ", "0"));

                }
                else
                {
                    ddlCategoria.Items.Insert(0, new ListItem("Categorias No Registradas ", "0"));
                }
            }
         
            btnRegistrarProducto.ServerClick +=new EventHandler( mtdRegistrarProducto);
        }
        protected void mtdRegistrarProducto(object sender, EventArgs e)
        {
            ClProductoE objE = new ClProductoE();
            ClProductoL objL = new ClProductoL();
            objE.nombreP = txtNombre.Value;
            objE.descripcionP = txtDescripcion.Value;
            objE.precio = txtPrecio.Value;
            objE.idCategoria = int.Parse(ddlCategoria.SelectedValue.ToString());
            string nombre = Session["Tienda"].ToString() + objE.idCategoria + txtNombre.Value+".png";
            string ruta = Path.Combine(Server.MapPath( "~/Vista/imagenes/ImagenesProductoCat/" ), nombre);
            FileUpload1.SaveAs(ruta);
            objE.foto = nombre;
            objL.mtdRegistrarProducto(objE);
        }
        
      

        protected void Button_Click(object sender, EventArgs e)
        {
            ClProductoE objE = new ClProductoE();
            ClProductoL objL = new ClProductoL();
            objE.nombreC = txtNombreC.Value;
            objE.descripcionC = txtDescripcionC.Value;
            objE.idTienda = int.Parse(Session["Tienda"].ToString());
            objL.mtdRegistrarCategoria(objE);
        }
    }
}
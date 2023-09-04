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
            int idUsuarios = int.Parse(Session["RolUsuario"].ToString());
            if (idUsuarios != 2)
            {
                Response.Redirect("../../../../PaginaPrincipal.aspx");
            }
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
            int categoria = int.Parse(ddlCategoria.SelectedValue.ToString());
            if (txtNombre.Value!="" ||txtDescripcion.Value!="" || txtPrecio.Value!="" ||FileUpload1.HasFile)
            {
                if (categoria!=0)
                {
                    objE.nombreP = txtNombre.Value;
                    objE.descripcionP = txtDescripcion.Value;
                    objE.precio = txtPrecio.Value;
                    objE.idCategoria =categoria;
                    string nombre = Session["Tienda"].ToString() + objE.idCategoria + txtNombre.Value + ".png";
                    string ruta = Path.Combine(Server.MapPath("~/Vista/imagenes/ImagenesProductoCat/"), nombre);
                    FileUpload1.SaveAs(ruta);
                    objE.foto = nombre;
                    objL.mtdRegistrarProducto(objE);
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡El Producto " + objE.nombre + "!', 'A sido registrado', 'success')", true);
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Categoria sin seleccionar!', 'Seleccione una categoria', 'warning')", true);
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Espacios en Blanco!', 'Rellenar Todos los Campos', 'warning')", true);
            }

        }



        protected void Button_Click(object sender, EventArgs e)
        {
            if (txtNombreC.Value!="" || txtDescripcionC.Value!="")
            {
                ClProductoE objE = new ClProductoE();
                ClProductoL objL = new ClProductoL();
                objE.nombreC = txtNombreC.Value;
                objE.descripcionC = txtDescripcionC.Value;
                objE.idTienda = int.Parse(Session["Tienda"].ToString());
                objL.mtdRegistrarCategoria(objE);

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡La Categoria " + objE.nombre + "!', 'A sido registrada', 'success')", true);

            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Espacios en Blanco!', 'Rellenar Todos los Campos', 'warning')", true);
            }


        }
    }
}
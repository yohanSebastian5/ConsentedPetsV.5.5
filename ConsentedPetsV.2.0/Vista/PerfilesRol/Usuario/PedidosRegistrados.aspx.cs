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

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Usuario
{
    public partial class PedidosRegistrados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuarios = int.Parse(Session["Usuario"].ToString());
            if (idUsuarios == 0)
            {
                Response.Redirect("../../../PaginaPrincipal.aspx");
            }
            int idUsuario = int.Parse(Session["Usuario"].ToString());
            idUsuario = 20;
            ClPedidoL objMascotaL = new ClPedidoL();
            List<ClPedidoE> lista = objMascotaL.mtdPedido(idUsuario);
            repPedido.DataSource = lista;
            repPedido.DataBind();
        }
    }
}
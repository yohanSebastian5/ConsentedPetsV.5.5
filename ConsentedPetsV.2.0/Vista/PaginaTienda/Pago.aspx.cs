using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PaginaTienda
{
    public partial class Pago : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

   
        protected void volver_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaginaTienda.aspx");
        }
    }
}
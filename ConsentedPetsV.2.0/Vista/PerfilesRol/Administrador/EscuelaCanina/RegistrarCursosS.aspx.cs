using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina
{
    public partial class RegistrarCursosS : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                ClServicioVetL objL = new ClServicioVetL();
                ClServicioVeterinariaE objE = new ClServicioVeterinariaE();
                Session["Escuela"] = 1;
                List<ClServicioVeterinariaE> lista = objL.mtdListar(int.Parse(Session["Escuela"].ToString()));
                ddlTipo.DataSource = lista;
                ddlTipo.DataTextField = "nombre";
                ddlTipo.DataValueField = "idServicioV";
                ddlTipo.DataBind();
                ddlTipo.Items.Insert(0, new ListItem("Servicios Registrados: ", "0"));

            }

        }
        protected void ddlTipo_SelectedIndexChanged(object sender, EventArgs e)
        {
            ClServicioVetL objL = new ClServicioVetL();
            Session["Escuela"] = 1;
            List<ClServicioVeterinariaE> lista = objL.mtdListar(int.Parse(Session["Escuela"].ToString()));
            int tipo = ddlTipo.SelectedIndex;
            if (tipo>0)
            {
                txtServcio.Value = ddlTipo.SelectedItem.Text;
                string fotos= lista.FirstOrDefault(p => p.idServicioV == tipo)?.foto;
                string ruta = "../../../imagenes/ServicioCursoE/" + lista.FirstOrDefault(p=>p.idServicioV==tipo)?.foto;
                Image2.ImageUrl = ruta;
                
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClServicioVeterinariaE objE = new ClServicioVeterinariaE();
            ClProcesosVetL objL = new ClProcesosVetL();
            ClServicioVetL objL2 = new ClServicioVetL();
            int escuela = int.Parse(Session["Escuela"].ToString());
            List<ClServicioVeterinariaE> lista;
            objE.nombre = txtServcio.Value;
            int tipo = ddlTipo.SelectedIndex;
            if (tipo ==0)
            {
                string nombreS = "Servicio" + escuela + txtServcio.Value+".png";
                string rutaImg = Path.Combine(Server.MapPath("../../../imagenes/ServicioCursosE/"), nombreS);
                FileUpload2.SaveAs(rutaImg);
                objE.foto = nombreS;
                objL.mtdRegistrarServcioE(objE);
                lista=objL2.mtdListar(escuela,nombreS);
                objE.idServicioV =int.Parse(lista[0].idServicioV.ToString());
            }
            else
            {
                //objE.foto = System.IO.Path.GetFileName(Image2.ImageUrl);
                objE.idServicioV = tipo;
            }
            objE.nombreC = txtNombre.Value;
            objE.precio =int.Parse(txtPrecio.Value);
            objE.descripcion = txtDescripcion.Value;

            string nombreC = "Curso" + escuela + txtServcio.Value + ".png";
            string ruta = Path.Combine(Server.MapPath("../../../imagenes/ServicioCursosE/"), nombreC);
            FileUpload1.SaveAs(ruta);
            objE.foto = nombreC;
            objL.mtdRegistrarCursoE(objE);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡CURSO " + objE.nombreC + " REGISTRADO!', 'Con el Servcio '"+txtServcio.Value+"'', 'success')", true);
        }
    }
}
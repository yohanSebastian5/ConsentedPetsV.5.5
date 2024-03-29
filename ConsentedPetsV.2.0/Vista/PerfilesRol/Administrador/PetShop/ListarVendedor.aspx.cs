﻿using ConsentedPets.Entidades;
using ConsentedPets.Logica;
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
    public partial class ListarVendedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idUsuarios = int.Parse(Session["RolUsuario"].ToString());
            if (idUsuarios != 2)
            {
                Response.Redirect("../../../../PaginaPrincipal.aspx");
            }
        }
        [WebMethod]
        public static List<ClUsuarioE> mtdLista()
        {
            int tipo = int.Parse(HttpContext.Current.Session["Tienda"].ToString());
            CLUsuarioL objUsuarioL = new CLUsuarioL();
            List<ClUsuarioE> listaPersonal = objUsuarioL.mtdRepeater(tipo, 2);
            return listaPersonal;
        }
        [WebMethod]
        public static void GuardarIdPersonal(string id)
        {
            HttpContext.Current.Session["Eliminar"] = id;
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ClEliminarL objL = new ClEliminarL();
            int idE = int.Parse(HttpContext.Current.Session["Eliminar"].ToString());
            objL.mtdEliminarUsuarioEs(idE, "Tienda");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Actualizacion Exitosa !', 'Vendedor Eliminada', 'success')", true);

        }
        [WebMethod]
        public static List<ClUsuarioE> cargardatos(int id)
        {
            int tipo = int.Parse(HttpContext.Current.Session["Tienda"].ToString());
            CLUsuarioL objUsuarioL = new CLUsuarioL();
            List<ClUsuarioE> listaPersonal = objUsuarioL.mtdRepeater(tipo, 3, id);
            return listaPersonal;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CLUsuarioL objL = new CLUsuarioL();
            ClUsuarioE objE = new ClUsuarioE();
            objE.profesion = txtProfesion.Text;
            objE.especializacion = txtEspecializacion.Text;
            objE.experiencia = txtExperiencia.Text;
            objE.idUsuario = int.Parse(Session["Eliminar"].ToString());
            objL.mtdActualizarEmp(objE);
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Actualizacion Exitosa !', 'Vendedor Actualizado', 'success')", true);

        }
    }
}
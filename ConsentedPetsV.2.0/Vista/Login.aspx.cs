﻿using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsentedPetsV._2._0.Vista
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (int.Parse(Session["Usuario"].ToString()) != 0)
            {
                if (int.Parse(Session["Veterinaria"].ToString()) != 0)
                {
                    Response.Redirect("PaginaVeterinaria.aspx");

                }
                else if (int.Parse(Session["Tienda"].ToString()) != 0)
                {
                    
                    Response.Redirect("PaginaTienda/PaginaTienda.aspx");
                }
                else if (int.Parse(Session["Escuela"].ToString()) != 0)
                {
                    Response.Redirect("PaginaEscuela/PaginaEscuela.aspx");
                }

            }
        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            ClUsuarioE objUsuE = new ClUsuarioE();
            Encrypt encry = new Encrypt();
            objUsuE.email = txtUsuario.Value;
            string contraseña = encry.cifrarT(txtContraseña.Value);
            objUsuE.contraseña = contraseña;
            CLUsuarioL objUsuL = new CLUsuarioL();
            objUsuE = objUsuL.mtdRolU(objUsuE);


            if (objUsuE.nombre != null)
            {
                Session["RolUsuario"] = objUsuE.idRol;
                Session["Usuario"] = objUsuE.idUsuario;
                Session["NombreUsuario"] = objUsuE.nombre;
                if (int.Parse(Session["Veterinaria"].ToString()) != 0)
                {
                    Response.Redirect("PaginaVeterinaria.aspx");
                }
                else if (int.Parse(Session["Tienda"].ToString()) != 0)
                {
                    Response.Redirect("PaginaTienda/PaginaTienda.aspx");
                }
                else if (int.Parse(Session["Escuela"].ToString()) != 0)
                {
                    Response.Redirect("PaginaEscuela/PaginaEscuela.aspx");
                }

                txtUsuario.Value = "";
                Response.Redirect("../Principal.aspx");

            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡Error !', 'Usuario  No Registrado', 'warning')", true);
                txtUsuario.Value = "";
            }

        }
    }
}
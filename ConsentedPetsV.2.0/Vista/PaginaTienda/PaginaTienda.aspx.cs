using ConsentedPets.Entidades;
using ConsentedPets.Logica;
using ConsentedPetsV._2._0.Datos;
using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Runtime.Remoting;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Data;

namespace PaginaTienda.PaginaTienda
{
    public partial class PaginaTienda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                int idTienda = int.Parse(Session["Tienda"].ToString());
                
                int idUsuario = int.Parse(Session["Usuario"].ToString());
                

                ClMascotaL objMascotaL = new ClMascotaL();
                List<ClMascotaE> lista = objMascotaL.mtdMascotaVenta(idTienda);
                repMascotaVenta.DataSource = lista;
                repMascotaVenta.DataBind();

                ClCategoriaL obj = new ClCategoriaL();
                List<ClCategoriaE> listaC = obj.mtdCategoria(idTienda);
                repCateg.DataSource = listaC;
                repCateg.DataBind();

                int seccion = 2;
                ClComentarioL objCOm = new ClComentarioL();
                List<ClComentarioE> listaCom = objCOm.mtdListar(seccion, idTienda);
                repCo.DataSource = listaCom;

                repCo.DataBind();



                ClEstablecimientoL objEs = new ClEstablecimientoL();
                ClEstablecimientoE objE = objEs.mtdListarVet("", "Tienda", idTienda, 1);
                string image = "../imagenes/ImagenesEstablecimiento/" + objE.foto;
                foto.ImageUrl = image;
                Imag.ImageUrl = image;
                //Image2.ImageUrl = image;
                nombre1.InnerText = objE.nombre;

                //ema.InnerText = objE.email;
                nombre.InnerText = objE.nombre;

                emails.InnerText = objE.email;
                telefono.InnerText = objE.telefono;
            }
           
            ClEstablecimientoL objDato1 = new ClEstablecimientoL();
            ClEstablecimientoE objDato2 = objDato1.mtdGmail(int.Parse(Session["Tienda"].ToString()));
            objDato2.email = emails.InnerText;
            objDato2.telefono = telefono.InnerText;

            string destino = objDato2.email;
            string name = Request.Form["name"];
            string email = Request.Form["email"];
            string phone = Request.Form["phone"];
            string cantidad = Request.Form["cantidad"];
            string message = Request.Form["message"];
            if (!string.IsNullOrEmpty(email))
            {
                mtdPedido(destino, name, email, phone, cantidad, message);
            }





        }

        protected void mtdPedido(string destino, string name, string email, string phone, string cantidad, string message)
        {
            int idTienda = int.Parse(Session["Tienda"].ToString());
           
            int idUsuario = int.Parse(Session["Usuario"].ToString());
           
            ClPedidoL objDato1 = new ClPedidoL();
            ClPedidoE objDato2 = new ClPedidoE();
            string remitente = email;
            string contraseña = "ftatqdsdoxfdhzgw";
            string mensajeCompleto = $"Solicitud de producto\n\nEmail: {email}\n\nTelefono: {phone}\n\nNombre del producto: {name}\n\nCantidad:{cantidad}\n\nDescripción: {message}";
            MailMessage mensaje = new MailMessage(remitente, destino, name, mensajeCompleto);
            SmtpClient clienteSmtp = new SmtpClient("smtp.gmail.com", 587);
            clienteSmtp.EnableSsl = true;
            clienteSmtp.Credentials = new NetworkCredential(remitente, contraseña);
            clienteSmtp.Send(mensaje);
            mensaje.Dispose();
            clienteSmtp.Dispose();


            objDato2.name = name;
            objDato2.message = message;
            DateTime fechaActual = DateTime.Today;
            objDato2.fecha = fechaActual.Date.ToString("dd/MM/yyyy");
            objDato2.estado = "pendiente";
            objDato2.idUsuario = idUsuario;
            objDato2.idTienda = idTienda;
            objDato1.mtdGuardarPedido(objDato2);


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



        [WebMethod]
        protected void btnEnviarComentario_Click(object sender, EventArgs e)
        {
            int idTienda = int.Parse(Session["Tienda"].ToString());
        
            int idUsuario = int.Parse(Session["Usuario"].ToString());
           
            ClComentarioL objL = new ClComentarioL();
            ClComentarioE objE = new ClComentarioE();
            objE.comentario = comentario.InnerText;
            objE.calificacion = int.Parse(valorEstrellaHidden.Value); // Obtener el valor de la estrella seleccionada
            objE.idUsuario = idUsuario;
            objE.idTienda = idTienda;
            objL.mtdRegistrar(objE);
        }
    }
}
using ConsentedPetsV._2._0.Entidades;
using ConsentedPetsV._2._0.Logica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using ConsentedPets.Entidades;
using ConsentedPets.Logica;

namespace ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina
{
    public partial class RegistrarActividad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnR.ServerClick += new EventHandler(mtdRegistrarActividad);
        }
        protected void calendarFecha_SelectionChanged(object sender, EventArgs e)
        {
            txtFecha.Value= calendarFecha.SelectedDate.ToString("yyyy-MM-dd");
        }
        protected void mtdRegistrarActividad(object sender, EventArgs e)
        {
            int idEscuela = int.Parse(Session["Escuela"].ToString());
            
            int idUsuario = int.Parse(Session["Usuario"].ToString());
            
            ClEstablecimientoL objDato = new ClEstablecimientoL();
            ClEstablecimientoE objDatos = objDato.mtdGmailEs(idEscuela);

            ClProcesosVetL objL = new ClProcesosVetL();
            ClServicioVeterinariaE objE = new ClServicioVeterinariaE();
            List<ClUsuarioE> lista = objDato.mtdUsuarioEscuela(idEscuela);

            repEmail.DataSource = lista;
            repEmail.DataBind();

            objE.nombre = txtnombre.Value;
            objE.descripcion = txtDescripcion.Value;
            objE.fecha = txtFecha.Value;
            objE.idServicioV = idEscuela;

            objL.mtdRegistrarActividad(objE);



            string remitente = objDatos.email;
            string contraseña = "ftatqdsdoxfdhzgw";

            List<string> destinos = new List<string>();

            foreach (RepeaterItem item in repEmail.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    Label lblEmail = (Label)item.FindControl("idEmail");
                    string email = lblEmail.Text;

                    // Agregar el correo electrónico a la lista de destinos
                    destinos.Add(email);
                }
            }

            // Convertir la lista de destinos en una cadena separada por comas
            string destino = string.Join(",", destinos);

            string mensajeCompleto = $"Cordial Saludo. Te invitamos a la siguiente actividad.\n\nNombre de la Actividad: {objE.nombre}\n\nDescripción de la actividad: {objE.descripcion}\n\nFecha de la actividad: {objE.fecha}\n\nApreciado usuario, sería un gusto para nosotros contar con tu compañía en nuestra actividad";

            MailMessage mensaje = new MailMessage(remitente, destino, objE.nombre, mensajeCompleto);
            SmtpClient clienteSmtp = new SmtpClient("smtp.gmail.com", 587);
            clienteSmtp.EnableSsl = true;
            clienteSmtp.Credentials = new NetworkCredential(remitente, contraseña);
            clienteSmtp.Send(mensaje);
            mensaje.Dispose();
            clienteSmtp.Dispose();
        }

    }
}
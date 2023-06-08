using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPets.Entidades
{
    public class ClUsuarioE
    {
        public string documento { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string telefono { get; set; }
        public string email { get; set; }
        public string foto { get; set; }
        public string direccion { get; set; }
        public string especializacion { get; set; }
        public string experiencia { get; set; }
        public string profesion { get; set; }
        public string genero { get; set; }
        public string contraseña { get; set; }
        public int idUsuario { get; set; }
        public int idRol { get; set; }

    }
}
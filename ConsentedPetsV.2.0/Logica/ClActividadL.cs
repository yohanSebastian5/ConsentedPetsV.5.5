using ConsentedPets.Datos;
using ConsentedPets.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Logica
{
    public class ClActividadL
    {
        public ClEstablecimientoE mtdListaDatosEs(int idEscuela)
        {
            ClEstablecimientoD objDato = new ClEstablecimientoD();
            ClEstablecimientoE objDato1 = objDato.mtdListaDatoEs(idEscuela);
            return objDato1;
        }

        
    }
}
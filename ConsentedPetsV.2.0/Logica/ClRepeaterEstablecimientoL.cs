using ConsentedPets.Datos;
using ConsentedPets.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPets.Logica
{
    public class ClRepeaterEstablecimientoL
    {
        public List<ClRepeaterEstablecimientoE> mtdRepeater(int idSeccion,int usuario=0,int establecimiento=0)
        {
            ClRepeaterEstablecimientoD objVet = new ClRepeaterEstablecimientoD();
            List<ClRepeaterEstablecimientoE> listaVet = objVet.mtdListar(idSeccion,usuario,establecimiento);
            return listaVet;

        }
    }
}
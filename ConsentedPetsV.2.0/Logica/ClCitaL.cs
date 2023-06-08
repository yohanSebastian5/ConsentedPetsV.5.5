using ConsentedPetsV._2._0.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Logica
{
    public class ClCitaL
    {
        public void mtdRegistrar(int mascota, string fechaCita, string hora, string estado)
        {
            ClCitaD objCita = new ClCitaD();
            objCita.mtdCita(mascota, fechaCita, hora, estado);

        }

        public List<ClCitaE> mtdListar(int id = 0, int tipo = 0)
        {
            ClCitaD objCitaD = new ClCitaD();
            List<ClCitaE> lista = objCitaD.mtdListar(id, tipo);
            return lista;

        }
        public void mtdHistrorial(int idUsuario, int precio, int idServicio, string descripcion)
        {
            

        }
    }
}
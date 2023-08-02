
using ConsentedPets.Datos;
using ConsentedPets.Entidades;
using ConsentedPetsV._2._0.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Logica
{
    public class ClServicioVetL
    {
        public List<ClServicioVeterinariaE> mtdRepeater(int idVeterinaria,int tipo=0)
        {
            ClServicioVetD objVet = new ClServicioVetD();
            List<ClServicioVeterinariaE> listaVet = objVet.mtdListar(idVeterinaria,tipo);
            return listaVet;

        }
        public ClServicioVeterinariaE mtdListarSer(int idServicio)
        {

            ClServicioVetD objSe = new ClServicioVetD();
            ClServicioVeterinariaE objE = objSe.mtdListaSer(idServicio);
            return objE;

        }
        public List<ClServicioVeterinariaE> mtdListar(int id, string tipo = "")
        {
            ClProcesosEscuela objE = new ClProcesosEscuela();
            List<ClServicioVeterinariaE> listaVet = objE.mtdListar(id, tipo);
            return listaVet;

        }
        public void mtdRegistrar(ClServicioVeterinariaE objServis)
        {
            ClServicioVetD objD = new ClServicioVetD();
            objD.mtdRegistrarS(objServis);
        }
        public void mtdActualizar(ClServicioVeterinariaE objServis)
        {
            ClServicioVetD objD = new ClServicioVetD();
            objD.mtdEditarS(objServis);
        }
    }
}
using ConsentedPets.Datos;
using ConsentedPets.Entidades;
using ConsentedPetsV._2._0.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPets.Logica
{
    public class ClEstablecimientoL
    {
        public void mtdRegistrar(string nombre, string direccion, string telefono, string email, string foto,int  tipo)
        {
            ClEstablecimientoD objEstablecimientoD=new ClEstablecimientoD();
            objEstablecimientoD.mtdRegistrar(nombre, direccion, telefono, email, foto,tipo);
        }

        public List<ClEstablecimientoE> mdtListar()
        {
            ClEstablecimientoD objCate = new ClEstablecimientoD();
            List<ClEstablecimientoE> listCate = objCate.mtdListar();
            return listCate;
        }
        public void mtdUsuarioVeterinaria(int idUsu, int idVeter)
        {
            ClEstablecimientoD objCate = new ClEstablecimientoD();
            objCate.mtdRegistrarUsuarioRol(idUsu, idVeter);
        }
        public ClEstablecimientoE mtdListarVet(string foto="", string esta = "Veterinaria",int id=0, int tipo = 0)
        {
            ClEstablecimientoD objD = new ClEstablecimientoD();
            ClEstablecimientoE objE = objD.mtdListar(foto,esta,id,tipo);
            return objE;
        }

        public List<ClEstablecimientoE> mtdEstablecimiento (int idVeterinaria)
        {
            ClEstablecimientoD objVete = new ClEstablecimientoD();
            List<ClEstablecimientoE> lista = objVete.mtdVeterinaria(idVeterinaria);
            return lista;
        }      
        public void mtdActualizar(ClEstablecimientoE objE,string tipo="")
        {
            ClEstablecimientoD objD = new ClEstablecimientoD();
            objD.mtdActualizar(objE, tipo);
        }

    }
}
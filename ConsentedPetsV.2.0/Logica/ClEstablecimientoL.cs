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
        public void mtdUsuarioVeterinaria(int idUsu, int idVeter,string establecimiento="Veterinaria")
        {
            ClEstablecimientoD objCate = new ClEstablecimientoD();
            objCate.mtdRegistrarUsuarioRol(idUsu, idVeter,establecimiento);
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
        public void mtdEliminarE(int idE, int tipo)
        {
            ClEstablecimientoD objD = new ClEstablecimientoD();
            objD.mtdEliminarE (idE, tipo);
        }

        public ClEstablecimientoE mtdGmail(int idTienda)
        {
            ClEstablecimientoD objDato = new ClEstablecimientoD();
            ClEstablecimientoE objDato1 = objDato.mtdGmail(idTienda);
            return objDato1;
        }

        public ClEstablecimientoE mtdListaDatosEs(int idEscuela)
        {
            ClEstablecimientoD objDato = new ClEstablecimientoD();
            ClEstablecimientoE objDato1 = objDato.mtdListaDatoEs(idEscuela);
            return objDato1;
        }

        public ClEstablecimientoE mtdGmailEs(int idEscuela)
        {
            ClEstablecimientoD objDato = new ClEstablecimientoD();
            ClEstablecimientoE objDato1 = objDato.mtdGmailEs(idEscuela);
            return objDato1;
        }

        public List<ClUsuarioE> mtdUsuarioEscuela(int idEscuela)
        {
            ClEstablecimientoD objD = new ClEstablecimientoD();
            List<ClUsuarioE> lista = objD.mtdUsuariosEscuela(idEscuela);
            return lista;
        }
    }
}
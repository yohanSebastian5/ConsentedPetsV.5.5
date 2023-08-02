using ConsentedPetsV._2._0.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Logica
{
    public class ClProcesosVetL
    {
        public List<ClProcesosVetE> mtdProcesos(int idVeterinaria)
        {
            ClProcesosVetD objP = new ClProcesosVetD();
            List<ClProcesosVetE> lista = objP.mtdProcesos(idVeterinaria);
            return lista;

        }
        public void mtdRegistrar(ClProcesosVetE objE)
        {
            ClProcesosVetD objD = new ClProcesosVetD();
            objD.mtdRegistrarS(objE);
        }
        public void mtdRegistrarProcesoE(ClProcesosVetE objE)
        {
            ClProcesosVetD objD = new ClProcesosVetD();
            objD.mtdRegistrarProcesoE(objE);
        }
        public void mtdRegistrarServcioE(ClServicioVeterinariaE objE)
        {
            ClProcesosEscuela objD = new ClProcesosEscuela();
            objD.mtdRegistrarS(objE);
        }
        public void mtdRegistrarCursoE(ClServicioVeterinariaE objE)
        {
            ClProcesosEscuela objD = new ClProcesosEscuela();
            objD.mtdRegistrarCurso(objE);
        }
        public List<ClMatriculaE> mtdListarMatriculas(int idVeterinaria)
        {
            ClProcesosEscuela objM = new ClProcesosEscuela();
            List<ClMatriculaE> lista = objM.mtdListarMatriculas(idVeterinaria);
            return lista;

        }
        public List<ClMatriculaE> mtdListarMascotas(int idVeterinaria)
        {
            ClProcesosEscuela objM = new ClProcesosEscuela();
            List<ClMatriculaE> lista = objM.mtdListarMascotas(idVeterinaria);
            return lista;

        } 
        public List<ClServicioVeterinariaE> mtdListarCurso(int id)
        {
            ClProcesosEscuela objM = new ClProcesosEscuela();
            List<ClServicioVeterinariaE> lista = objM.mtdListarCurso(id);
            return lista;

        }
        public List<ClServicioVeterinariaE> mtdListarActividad(int id,int tipo=0)
        {
            ClProcesosEscuela objM = new ClProcesosEscuela();
            List<ClServicioVeterinariaE> lista = objM.mtdListarActividades(id,tipo);
            return lista;

        }
        public List<ClServicioVeterinariaE> mtdListarProcesos(int id)
        {
            ClProcesosEscuela objM = new ClProcesosEscuela();
            List<ClServicioVeterinariaE> lista = objM.mtdListarProcesos(id);
            return lista;

        }
        public void mtdRegistrarActividad(ClServicioVeterinariaE objE)
        {
            ClProcesosEscuela objD = new ClProcesosEscuela();
            objD.mtdRegistrarActividad(objE);
        }
        public void mtdActualizarActividad(ClServicioVeterinariaE objE)
        {
            ClProcesosEscuela objD = new ClProcesosEscuela();
            objD.mtdActualizarActividad(objE);
        }
    }
}
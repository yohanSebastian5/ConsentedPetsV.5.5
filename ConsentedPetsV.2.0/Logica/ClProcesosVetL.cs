﻿using ConsentedPetsV._2._0.Datos;
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
    }
}
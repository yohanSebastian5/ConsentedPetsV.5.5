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
    public class ClMatriculaL
    {
        public void mtdMatricula(ClMatriculaE objDatos)
        {
            ClMatriculaD objMD = new ClMatriculaD();
            objMD.mtdMatricula(objDatos);

           
        }
    }
}
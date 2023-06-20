using ConsentedPets.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Datos
{
    public class ClMatriculaD
    {
        public int mtdMatricula(ClMatriculaE objDatos)
        {
            int cantReg = 0;
            string consulta = "insert into Registro(idMascota, idEscuela) " +
                              "values('" + objDatos.idMascota + "' , '" + objDatos.idEscuela + "') SELECT SCOPE_IDENTITY() AS [ultimoId]";



            ClProcesarSQL objSQL = new ClProcesarSQL();

            DataTable tblID = objSQL.mtdSelectDesc(consulta);
            int idReg = int.Parse(tblID.Rows[0]["ultimoId"].ToString());
            //string fecha = objDatos.fechaMatricula.ToString();
            
            string consulta2 = "INSERT INTO Matricula(precioTotal, idCurso, idRegistro) VALUES ('" + objDatos.precio+"','" + objDatos.idCurso+ "'," + idReg + ")";

            cantReg = objSQL.mtdIUDConect(consulta2);
            return cantReg;
        }
    }
}
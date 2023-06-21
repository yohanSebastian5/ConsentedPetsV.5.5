using ConsentedPets.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Datos
{
    public class ClCategoriaD
    {
        public List<ClCategoriaE> mtdCategoria(int idTienda)
        {
            string consulta = "select * from CategoriaPS where idTienda = '" + idTienda + "'";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tabla = sql.mtdSelectDesc(consulta);
            List<ClCategoriaE> lista = new List<ClCategoriaE>();
            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                ClCategoriaE objCE = new ClCategoriaE();
                objCE.idCategiraPS = int.Parse(tabla.Rows[i]["idCategoriaPS"].ToString());
                objCE.nombre = tabla.Rows[i]["nombre"].ToString();
                objCE.descripcion = tabla.Rows[i]["descripcion"].ToString();
                objCE.idTienda = int.Parse(tabla.Rows[i]["idTienda"].ToString());
                lista.Add(objCE);
            }
            return lista;
        }
    }
}
using ConsentedPetsV._2._0.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Logica
{
    public class ClProductoL
    {
        public List<ClProductoE> mtdProducto (int idCategoria)
        {
            ClProductoD objPD = new ClProductoD();
            List<ClProductoE> lista = objPD.mtdProducto(idCategoria);
            return lista;
        }
    }
}
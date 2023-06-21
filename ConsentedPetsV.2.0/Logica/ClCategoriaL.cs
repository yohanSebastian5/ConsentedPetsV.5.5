using ConsentedPetsV._2._0.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Logica
{
    public class ClCategoriaL
    {
        public List<ClCategoriaE> mtdCategoria(int idTienda)
        {
            ClCategoriaD obj = new ClCategoriaD();
            List<ClCategoriaE> lista = obj.mtdCategoria(idTienda);
            return lista;
        }
    }
}
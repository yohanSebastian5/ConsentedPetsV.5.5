using ConsentedPets.Datos;
using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Datos
{
    public class ClProductoD
    {
        public List<ClProductoE> mtdProducto(int idCategoria)
        {
            string consulta = "select * from Producto where idCategoriaPS = '" + idCategoria + "'";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tabla = sql.mtdSelectDesc(consulta);
            List<ClProductoE> lista = new List<ClProductoE>();

            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                ClProductoE objPE = new ClProductoE();
                objPE.idProducto = int.Parse(tabla.Rows[i]["idProducto"].ToString());
                objPE.nombre = tabla.Rows[i]["nombre"].ToString();
                objPE.descripcion = tabla.Rows[i]["descripcion"].ToString();
                objPE.foto = tabla.Rows[i]["foto"].ToString();
                objPE.precio = int.Parse(tabla.Rows[i]["precio"].ToString());
                objPE.idCategoriaPS = int.Parse(tabla.Rows[i]["idCategoriaPS"].ToString());
                lista.Add(objPE);
            }
            return lista;
        }
    }
}
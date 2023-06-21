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
    public class ClProductoL
    {
        public List<CLProductoE> mtdListarCategoria(int id)
        {
            ClProductoD objD = new ClProductoD();
            List<CLProductoE> lista = objD.mtdListarCategoria(id);
            return lista;

        }
        public void mtdRegistrarProducto(CLProductoE objE)
        {
            ClProductoD objD = new ClProductoD();
            objD.mtdRegistrarProducto(objE);
        }
        public void mtdRegistrarCategoria(CLProductoE objE)
        {
            ClProductoD objD = new ClProductoD();
            objD.mtdRegistrarCategoria(objE);
        }
        public List<ClMascotaE> mtdListarMascota(int idUsuario)
        {
            ClProductoD objDataTienda = new ClProductoD();
            List<ClMascotaE> listatienda = objDataTienda.mtdListarMascota(idUsuario);
            return listatienda;
        }
        public List<CLProductoE> mtdListarVentas(int idUsuario)
        {
            ClProductoD objDataTienda = new ClProductoD();
            List<CLProductoE> listatienda = objDataTienda.mtdListarVentas(idUsuario);
            return listatienda;
        }
        public List<CLProductoE> mtdListarPedidos(int idUsuario)
        {
            ClProductoD objDataTienda = new ClProductoD();
            List<CLProductoE> listatienda = objDataTienda.mtdListarPedidos(idUsuario);
            return listatienda;
        }
    }
}
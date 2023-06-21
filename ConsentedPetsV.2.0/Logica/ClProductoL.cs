
﻿using ConsentedPetsV._2._0.Datos;

﻿using ConsentedPets.Datos;
using ConsentedPets.Entidades;


using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Logica
{
    public class ClProductoL
    {

        public List<ClProductoE> mtdProducto(int idCategoria)
        {
            ClProductoD objPD = new ClProductoD();
            List<ClProductoE> lista = objPD.mtdProducto(idCategoria);
            return lista;
        }
        public List<ClProductoE> mtdListarCategoria(int id)
        {
            ClProductoD objD = new ClProductoD();
            List<ClProductoE> lista = objD.mtdListarCategoria(id);
            return lista;

        }
        public void mtdRegistrarProducto(ClProductoE objE)
        {
            ClProductoD objD = new ClProductoD();
            objD.mtdRegistrarProducto(objE);
        }
        public void mtdRegistrarCategoria(ClProductoE objE)
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
        public List<ClProductoE> mtdListarVentas(int idUsuario)
        {
            ClProductoD objDataTienda = new ClProductoD();
            List<ClProductoE> listatienda = objDataTienda.mtdListarVentas(idUsuario);
            return listatienda;
        }
        public List<ClProductoE> mtdListarPedidos(int idUsuario)
        {
            ClProductoD objDataTienda = new ClProductoD();
            List<ClProductoE> listatienda = objDataTienda.mtdListarPedidos(idUsuario);
            return listatienda;

        }
    }
}
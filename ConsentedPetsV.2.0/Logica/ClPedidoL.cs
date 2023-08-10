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
    public class ClPedidoL
    {
        public void mtdGuardarPedido(ClPedidoE objdatos)
        {
            ClPedidoD objMD = new ClPedidoD();
            objMD.mtdGuardarPedido(objdatos);
        }
        public List<ClPedidoE> mtdPedido(int idUsuario)
        {
            ClPedidoD objDataTienda = new ClPedidoD();
            List<ClPedidoE> listatienda = objDataTienda.mtdPedido(idUsuario);
            return listatienda;
        }
    }
}
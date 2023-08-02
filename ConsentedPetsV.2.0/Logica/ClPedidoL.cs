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
    }
}
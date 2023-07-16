using ConsentedPets.Datos;
using ConsentedPetsV._2._0.Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Logica
{

    public class ClEliminarL
    {
       public void mtdEliminarActividad(int id)
        {
            ClEliminarD objD = new ClEliminarD();
            objD.mtdEliminarActividad(id);
        }
        public void mtdEliminarCategoria(int id)
        {
            ClEliminarD objD = new ClEliminarD();
            objD.mtdEliminarCategoria(id);
        }
        public void mtdEliminarCurso(int id)
        {
            ClEliminarD objD = new ClEliminarD();
            objD.mtdEliminarCurso(id);
        }
        public void mtdEliminarHistoriaE(int id)
        {
            ClEliminarD objD = new ClEliminarD();
            objD.mtdEliminarHistoriaE(id);
        }
        public void mtdEliminarMascota(int id)
        {
            ClEliminarD objD = new ClEliminarD();
            objD.mtdEliminarMascota(id);
        }
        public void mtdEliminarPedido(int id)
        {
            ClEliminarD objD = new ClEliminarD();
            objD.mtdEliminarPedido(id);
        }
        public void mtdEliminarProducto(int id)
        {
            ClEliminarD objD = new ClEliminarD();
            objD.mtdEliminarProducto(id);
        }
        public void mtdEliminarServicioEs(int id)
        {
            ClEliminarD objD = new ClEliminarD();
            objD.mtdEliminarServicioEs(id);
        }
        public void mtdEliminarServicioV(int id)
        {
            ClEliminarD objD = new ClEliminarD();
            objD.mtdEliminarServicioV(id);
        }
        public void mtdEliminarUsuario(int id)
        {
            ClEliminarD objD = new ClEliminarD();
            objD.mtdEliminarUsuario(id);
        }
        public void mtdEliminarUsuarioEs(int id, string tipo)
        {
            ClEliminarD objD = new ClEliminarD();
            objD.mtdEliminarUsuarioEs(id, tipo);
        }
    }
}
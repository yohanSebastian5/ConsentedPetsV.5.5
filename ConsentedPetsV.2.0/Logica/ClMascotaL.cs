using ConsentedPets.Datos;
using ConsentedPets.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsentedPets.Logica
{
    public class ClMascotaL
    {
        public void mtdRegistrar(string nombre, string especie, string raza, string edad, string genero, string foto, string condicion, int idUsuario, int idVeterinaria=1, int precio = 0)
        {
            ClMascotaD objMascotaD = new ClMascotaD();
            objMascotaD.mtdRegistrar(nombre, especie, raza, edad, genero, foto, condicion, idUsuario, precio);
        }
        public void mtdRegistrarPS(string nombre, string especie, string raza, string edad, string genero, string foto, string condicion, int idTienda, int precio )
        {
            ClMascotaD objMascotaD = new ClMascotaD();
            objMascotaD.mtdRegistrarMascotaPD(nombre, especie, raza, edad, genero, foto, condicion, idTienda, precio);
        }

        public void mtdEditar(ClMascotaE objMascota)
        {
            ClMascotaD objMascotaD = new ClMascotaD();
            objMascotaD.mtdEdtar(objMascota);
        }
        public void mtdEliminar(int id)
        {
            ClMascotaD objMascotaD = new ClMascotaD();
            objMascotaD.mtdEliminar(id);
        }

        public List<ClMascotaE> mtdListarMascota(int idUsuario,int idMascota=0)
        {
            ClMascotaD objDataTienda = new ClMascotaD();
            List<ClMascotaE> listatienda = objDataTienda.mtdListarMascota(idUsuario,idMascota);
            return listatienda;
        }
        public List<ClMascotaE> mtdMascotaVenta(int idTienda)
        {
            ClMascotaD objDataTienda = new ClMascotaD();
            List<ClMascotaE> listatienda = objDataTienda.mtdMascotaVenta(idTienda);
            return listatienda;
        }
    }
}
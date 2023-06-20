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
        public List<ClMascotaE> mtdListarMascota(int idUsuario)
        {
            ClMascotaD objDataTienda = new ClMascotaD();
            List<ClMascotaE> listatienda = objDataTienda.mtdListarMascota(idUsuario);
            return listatienda;
        }
       
    }
}
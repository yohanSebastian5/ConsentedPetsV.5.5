using ConsentedPets.Datos;
using ConsentedPets.Entidades;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;

namespace ConsentedPets.Logica
{
    public class CLUsuarioL
    {
        public void mtdRegistrar(string documento,string nombre, string apellido, string direccion, string telefono, string email, string foto, string genero, string contraseña)
        {
            ClUsuarioD objUsuarioD = new ClUsuarioD();
            objUsuarioD.mtdRegistrar(documento,nombre,apellido, direccion, telefono, email, foto,genero,contraseña);
        }
        public void mtdActualizarEmp(ClUsuarioE objUsuE)
        {
            ClUsuarioD objUsuD = new ClUsuarioD();
            objUsuD.mtdActualizarEmpleado(objUsuE);
        }
        public void mtdActualizar(int id,string nombre, string apellido, string direccion, string telefono, string email, string foto, string genero, string contraseña)
        {
            ClUsuarioD objUsuarioD = new ClUsuarioD();
            objUsuarioD.mtdActualizar(id,nombre, apellido, direccion, telefono, email, foto, genero, contraseña);
        }
        public ClUsuarioE mtdListarU(int idUsuario)
        {
            ClUsuarioD objUsuarioD= new ClUsuarioD();
            ClUsuarioE objDatos = objUsuarioD.mtdMostrar(idUsuario);            
            return objDatos;
        }
        public ClUsuarioE mtdRolU(ClUsuarioE objUe,int tipo=0)
        {
            ClUsuarioD objUsuarioD = new ClUsuarioD();
            ClUsuarioE objUsuarioE = new ClUsuarioE();
            objUsuarioE = objUsuarioD.mtdLogin(objUe,tipo);
            return objUsuarioE;
        }

        public List<ClUsuarioE> mtdRepeater2(int tipo = 0)
        {
            ClUsuarioD objVet = new ClUsuarioD();
            List<ClUsuarioE> listaVet = objVet.mtdListar2(tipo);
            return listaVet;
        }

        public List<ClUsuarioE> mtdRepeater(int idVeterinaria)
        {
            ClUsuarioD objVet = new ClUsuarioD();
            List<ClUsuarioE> listaVet = objVet.mtdListar(idVeterinaria);
            return listaVet;
        }
        public void mtdRol(int idUsuario,int idRol=1)
        {
            ClUsuarioD objUsuario = new ClUsuarioD();
            objUsuario.mtdIngresarRol(idUsuario,idRol);

        }
        public void mtdActualizarDatos(ClUsuarioE objE)
        {
            ClUsuarioD objD = new ClUsuarioD();
            objD.mtdActualizarDatos(objE);
        }

        public List<ClUsuarioE> mtdProfesores(int idEcuela)
        {
            ClUsuarioD objUs = new ClUsuarioD();
            List<ClUsuarioE> lista = objUs.mtdListarprofesor(idEcuela);
            return lista;
        }

    }
}
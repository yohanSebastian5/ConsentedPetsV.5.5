using ConsentedPets.Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ConsentedPets.Datos
{
    public class ClRepeaterEstablecimientoD
    {
        public List<ClRepeaterEstablecimientoE> mtdListar(int Seccion,int usuario=0)
        {
            string seccion = "select * from ";
            string seccion2 = "";
            if (Seccion == 1 & usuario==0)
            {
                seccion2 = "Veterinaria";
            }
            else if (Seccion == 2 & usuario == 0)
            {
                seccion2 = "Tienda";
            }
            else if (Seccion == 3 & usuario == 0)
            {
                seccion2 = "Escuela";
            }
            else 
            {
                seccion = "select * from Veterinaria inner join UsuarioVeterinaria on Veterinaria.idVeterinaria=UsuarioVeterinaria.idVeterinaria where UsuarioVeterinaria.idUsuario='"+usuario+"'";
            }

            string consulta = seccion+seccion2;
            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable tblVeterinaria = SQL.mtdSelectDesc(consulta);
            List<ClRepeaterEstablecimientoE> listaProductos = new List<ClRepeaterEstablecimientoE>();
            for (int i = 0; i < tblVeterinaria.Rows.Count; i++)
            {
                ClRepeaterEstablecimientoE objVet = new ClRepeaterEstablecimientoE();

                objVet.idVeterinaria =int.Parse( tblVeterinaria.Rows[i]["idVeterinaria"].ToString());
                objVet.nombre = tblVeterinaria.Rows[i]["nombre"].ToString();
                objVet.direccion = tblVeterinaria.Rows[i]["direccion"].ToString();
                objVet.telefono = tblVeterinaria.Rows[i]["telefono"].ToString();
                objVet.email = tblVeterinaria.Rows[i]["email"].ToString();
                objVet.foto = tblVeterinaria.Rows[i]["foto"].ToString();
                listaProductos.Add(objVet);
            }
            return listaProductos;
        }
    }
}
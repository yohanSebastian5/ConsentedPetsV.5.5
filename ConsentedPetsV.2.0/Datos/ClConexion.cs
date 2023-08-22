using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace ConsentedPets.Datos
{
    public class ClConexion
    {

        //private SqlConnection Conexion = new SqlConnection("Data Source=.;Initial Catalog=ConsentedPets;Integrated Security=True");
        //private SqlConnection Conexion = new SqlConnection("Data Source=SOGAPRRBCFSD538;Initial Catalog=ConsentedPets;User ID=Mascotica;Password=1234");

        private SqlConnection Conexion = new SqlConnection("Data Source=DESKTOP-T3VHGES\\SQLEXPRESS;Initial Catalog=ConsentedPets;Integrated Security=True");
        public SqlConnection AbrirConexion()
        {
            if (Conexion.State == ConnectionState.Closed)
                Conexion.Open();
            return Conexion;
        }
        public SqlConnection CerrarConexion()
        {
            if (Conexion.State == ConnectionState.Open)
                Conexion.Close();
            return Conexion;
        }
    }
}
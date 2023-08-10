using ConsentedPets.Datos;


using ConsentedPets.Entidades;

using ConsentedPetsV._2._0.Entidades;
using System;
using System.Collections.Generic;
using System.Data;

using System.Data.SqlClient;

using System.Linq;
using System.Web;

namespace ConsentedPetsV._2._0.Datos
{
    public class ClProductoD
    {

        public List<ClProductoE> mtdProducto(int idCategoria)
        {
            string consulta = "select * from Producto where idCategoriaPS = '" + idCategoria + "'";
            ClProcesarSQL sql = new ClProcesarSQL();
            DataTable tabla = sql.mtdSelectDesc(consulta);
            List<ClProductoE> lista = new List<ClProductoE>();

            for (int i = 0; i < tabla.Rows.Count; i++)
            {
                ClProductoE objPE = new ClProductoE();
                objPE.idProducto = int.Parse(tabla.Rows[i]["idProducto"].ToString());
                objPE.nombre = tabla.Rows[i]["nombre"].ToString();
                objPE.descripcion = tabla.Rows[i]["descripcion"].ToString();
                objPE.foto = tabla.Rows[i]["foto"].ToString();
                objPE.precioP = int.Parse(tabla.Rows[i]["precio"].ToString());
                objPE.idCategoriaPS = int.Parse(tabla.Rows[i]["idCategoriaPS"].ToString());
                lista.Add(objPE);
            }
            return lista;
        }

        public List<ClProductoE> mtdListarCategoria(int id)
        {
            string consulta = "select * from CategoriaPS where idTienda="+id;
            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable table = SQL.mtdSelectDesc(consulta);
            List<ClProductoE> lista = new List<ClProductoE>();
            for (int i = 0; i < table.Rows.Count; i++)
            {
                ClProductoE objE = new ClProductoE();
                objE.nombreC = table.Rows[i]["nombre"].ToString();
                objE.idCategoria = int.Parse(table.Rows[i]["idCategoriaPS"].ToString());
                objE.descripcionC = table.Rows[i]["descripcion"].ToString();
                lista.Add(objE);

            }
            return lista;

        }

        public void mtdRegistrarProducto(ClProductoE objE)
        {
            ClConexion conexion = new ClConexion();
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistrarProducto";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@nombre",objE.nombreP);
            comando.Parameters.AddWithValue("@descripcion",objE.descripcionP);
            comando.Parameters.AddWithValue("@foto",objE.foto);
            comando.Parameters.AddWithValue("@precio",objE.precio);
            comando.Parameters.AddWithValue("@idCategoria",objE.idCategoria);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public void mtdRegistrarCategoria(ClProductoE objE)
        {
            ClConexion conexion = new ClConexion();
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "RegistrarCategoria";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@nombre", objE.nombreC);
            comando.Parameters.AddWithValue("@descripcion", objE.descripcionC);
            comando.Parameters.AddWithValue("@idEscuela", objE.idTienda);
            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }
        public List<ClMascotaE> mtdListarMascota(int idTienda)
        {
            string sql = "select * from Mascota where idTienda = '" + idTienda + "'";
            //SELECT idMascota, nombre FROM Mascota WHERE idUsuario = @idUsuario
            ClProcesarSQL objSql = new ClProcesarSQL();
            DataTable tblDataMascota = objSql.mtdSelectDesc(sql);

            List<ClMascotaE> listaMascota = new List<ClMascotaE>();

            for (int i = 0; i < tblDataMascota.Rows.Count; i++)
            {
                ClMascotaE objDatosMascota = new ClMascotaE();
                objDatosMascota.idMascota = int.Parse(tblDataMascota.Rows[i]["idMascota"].ToString());
                objDatosMascota.nombre = tblDataMascota.Rows[i]["nombre"].ToString();
                objDatosMascota.especie = tblDataMascota.Rows[i]["especie"].ToString();
                objDatosMascota.raza = tblDataMascota.Rows[i]["raza"].ToString();
                objDatosMascota.genero = tblDataMascota.Rows[i]["genero"].ToString();
                objDatosMascota.edad = tblDataMascota.Rows[i]["edad"].ToString();
                objDatosMascota.foto = tblDataMascota.Rows[i]["foto"].ToString();
                objDatosMascota.condicionMedica = tblDataMascota.Rows[i]["condicionMedica"].ToString();
                objDatosMascota.precio = int.Parse(tblDataMascota.Rows[i]["precio"].ToString());
                objDatosMascota.idTienda = int.Parse(tblDataMascota.Rows[i]["idTienda"].ToString());
                listaMascota.Add(objDatosMascota);
            }
            return listaMascota;

        }
        public List<ClProductoE> mtdListarVentas(int id)
        {
            string consulta = "select * from Compra inner join DetallesCompra on Compra.idCompra= DetallesCompra.idCompra inner join Producto on DetallesCompra.idProducto=Producto.idProducto inner join CategoriaPS on Producto.idCategoriaPS= CategoriaPS.idCategoriaPS where CategoriaPS.idTienda=1" + id;
            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable table = SQL.mtdSelectDesc(consulta);
            List<ClProductoE> lista = new List<ClProductoE>();
            for (int i = 0; i < table.Rows.Count; i++)
            {
                ClProductoE objE = new ClProductoE();
                objE.nombreP = table.Rows[i]["nombre"].ToString();
                objE.fecha = (table.Rows[i]["fechaCompra"].ToString());
                objE.cantidad = table.Rows[i]["cantidad"].ToString();
                objE.total = table.Rows[i]["totalDetalle"].ToString();
                objE.nombreC = table.Rows[i]["nombre2"].ToString();
                lista.Add(objE);

            }
            return lista;

        }

        public List<ClProductoE> mtdListarCompras(int id)
        {
            string consulta = "select * from Compra inner join DetallesCompra on Compra.idCompra= DetallesCompra.idCompra inner join Producto on DetallesCompra.idProducto=Producto.idProducto inner join UsuarioCompra on UsuarioCompra.idCompra=Compra.idCompra inner join CategoriaPS on CategoriaPS.idCategoriaPS=Producto.idCategoriaPS inner join Tienda on Tienda.idTienda=CategoriaPS.idTienda where UsuarioCompra.idUsuario=" + id;
            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable table = SQL.mtdSelectDesc(consulta);
            List<ClProductoE> lista = new List<ClProductoE>();
            for (int i = 0; i < table.Rows.Count; i++)
            {
                ClProductoE objE = new ClProductoE();
                objE.nombreP = table.Rows[i]["nombre"].ToString();
                objE.fecha = (table.Rows[i]["fechaCompra"].ToString());
                objE.cantidad = table.Rows[i]["cantidad"].ToString();
                objE.total = table.Rows[i]["totalDetalle"].ToString();
                objE.nombreC = table.Rows[i]["nombre1"].ToString();
                objE.nombre = table.Rows[i]["nombre2"].ToString();
                lista.Add(objE);

            }
            return lista;

        }
        public List<ClProductoE> mtdListarPedidos(int id)
        {
            string consulta = "select * from PedidosC inner join Usuario on PedidosC.idUsuario=Usuario.idUsuario where idTienda=" + id;
            ClProcesarSQL SQL = new ClProcesarSQL();
            DataTable table = SQL.mtdSelectDesc(consulta);
            List<ClProductoE> lista = new List<ClProductoE>();
            for (int i = 0; i < table.Rows.Count; i++)
            {
                ClProductoE objE = new ClProductoE();
                objE.nombreC = table.Rows[i]["nombre"].ToString();
                objE.fecha = table.Rows[i]["fechaPedido"].ToString();
                objE.descripcionC = table.Rows[i]["descripcion"].ToString();
                objE.nombreP = table.Rows[i]["nombre1"].ToString();
                objE.foto = table.Rows[i]["foto"].ToString();
                lista.Add(objE);

            }
            return lista;

        }



    }
}
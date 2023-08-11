<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/PetShop/PetShop.Master" AutoEventWireup="true" CodeBehind="ListarVentas.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.PetShop.ListarVentas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
    <link href="../../../Css/EliminarEstablecimiento.css" rel="stylesheet" />
    <style>
         .center {
            align-items: center;
            display: flex;
            justify-content: center;
            flex-direction: column;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <div class="center">
        <h1>Listar Ventas</h1>
        <div style="width: 1100px">
            <table id="tblUsua" class="table">
                <thead style="color: #0070ff">
                    <tr>
                        <th>PRODUCTO</th>
                        <th>CATEGORIA</th>
                        <th>FECHA VENTA</th>
                        <th>CANTIDAD</th>
                        <th>TOTAL VENTA</th>
                    </tr>
                </thead>
                <tbody></tbody>
                <tfoot>
                </tfoot>
            </table>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            var id = 0;
            $.ajax({
                type: "POST",
                url: "ListarVentas.aspx/mtdLista",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var data = response.d;

                    $('#tblUsua').DataTable({
                        data: data,
                        columns: [
                            { data: "nombreP" },
                            { data: "nombreC" },
                            { data: "fecha" },
                            { data: "cantidad" },
                            { data: "total" }
                        ]
                    });
                },
                error: function (error) {
                    console.log(error);
                }
            });
        });
    </script>



</asp:Content>

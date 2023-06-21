<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/Veterinaria/Veterinaria.Master" AutoEventWireup="true" CodeBehind="ListarVeterinarios.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.Veterinaria.ListarVeterinarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
    <style>
        .center {
            align-items: center;
            display: flex;
            justify-content: center;
            flex-direction: column;
        }

        body {
            background: linear-gradient(#d98567, #243b55);
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <div class="center">
        <h1 style="margin-top: 20px; color: #78fff1">Listar Personal</h1>
        <div style="width: 1100px">
            <table id="tblUsua" class="table" style="color: white">
                <thead style="color: #78fff1">
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Telefono</th>
                        <th>Email</th>
                        <th>Direccion</th>
                        <th>Genero</th>
                        <th>Especializacion</th>
                        <th>Experiencia</th>
                        <th>Profesion</th>
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
                url: "ListarVeterinarios.aspx/mtdLista",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var data = response.d;

                    $('#tblUsua').DataTable({
                        data: data,
                        columns: [
                            { data: "nombre" },
                            { data: "apellido" },
                            { data: "telefono" },
                            { data: "email" },
                            { data: "direccion" },
                            { data: "genero" },
                            { data: "especializacion" },
                            { data: "experiencia" },
                            { data: "profesion" }
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

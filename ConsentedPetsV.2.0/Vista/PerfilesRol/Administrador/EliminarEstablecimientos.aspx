<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/PerfilAdmin.Master" AutoEventWireup="true" CodeBehind="EliminarEstablecimientos.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EliminarEstablecimientos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">

    <h2>Editar y Elimnar</h2>
        <asp:DropDownList ID="ddlTipo" runat="server" OnSelectedIndexChanged="ddlTipo_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
    <div id="dataTableContainer" class="table-responsive" style="width: 100%">
        <table id="tblTrabajador" class="table ">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Telefono</th>
                    <th>Email</th>
                    <th>Direccion</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>





    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>

    <script>
        $(document).ready(function () {
            $.ajax({
                type: "POST",
                url: "EliminarEstablecimientos.aspx/mtdLista",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var data = response.d;
                    $('#tblTrabajador').DataTable({
                        data: data,
                        columns: [
                            { data: "nombre" },
                            { data: "telefono" },
                            { data: "email" },
                            { data: "direccion" },
                            {
                                data: null,
                                render: function (data, type, row) {
                                    return '<button type="button" class="btn btn-update btn-primary" data-id-personal="' + data.id + '" data-bs-toggle="modal" data-bs-target="#staticBackdrop"> Editar </button > ';
                                }
                            }

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

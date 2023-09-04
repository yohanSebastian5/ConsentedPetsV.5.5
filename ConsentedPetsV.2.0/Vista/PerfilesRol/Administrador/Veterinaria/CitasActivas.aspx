<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/Veterinaria/Veterinaria.Master" AutoEventWireup="true" CodeBehind="CitasActivas.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.Veterinaria.CitasActivas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
    <link href="../../../../Styles/sweetalert.css" rel="stylesheet" />
    <script src="../../../../Scripts/sweetalert.min.js"></script>
    <style>
        .center {
            align-items: center;
            display: flex;
            justify-content: center;
            flex-direction: column;
        }

        body {
            background: linear-gradient(#8db3e1, #1d3149);
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <div class="center">
        <h1 style="margin-top: 20px; color: #78fff1">Citas Pendientes</h1>
        <div style="width: 1100px">
            <table id="tblCita" class="table" style="color: white">
                <thead style="color: #78fff1">
                    <tr>
                        <th>Servicio</th>
                        <th>Descripcion</th>
                        <th>Precio</th>
                        <th>Fecha</th>
                        <th>Hora</th>
                        <th>Estado</th>
                        <th>Actualizar</th>
                    </tr>
                </thead>
                <tbody></tbody>
                <tfoot>
                </tfoot>
            </table>
        </div>
    </div>
    <form runat="server">
         <div style="color:lightslategray" class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content"  style="background-color: #2972d9b3; width:600px">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel" style="color:mintcream">Actualizacion de Estado</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="section">
                            <%--<h2 class="py-3">Actualizacion de Datos</h2>--%>
                            <div class="container">
                                <div class="card" style=" background: #4b92ae;color: mintcream;">
                                    <asp:DropDownList ID="ddlEstado" runat="server"></asp:DropDownList>

                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            <asp:Button ID="btnActualizar" CssClass="btn btn-danger" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script>
        $(document).ready(function () {
            var id = 0;
            $.ajax({
                type: "POST",
                url: "CitasActivas.aspx/mtdLista",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var data = response.d;

                    $('#tblCita').DataTable({
                        data: data,
                        columns: [
                            { data: "nombre" },
                            { data: "descripcion" },
                            { data: "precio" },
                            { data: "FechaCita" },
                            { data: "HoraCita" },
                            { data: "Estado" },
                            {
                                data: null,
                                render: function (data, type, row) {
                                    return '<button type="button" id="btnEditar" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" data-id="' + data.idcita + '">Actualizar</button > ';

                                }
                            }
                        ]
                    });
                    $('#tblCita').on('click', '#btnEditar', function () {
                        var id = $(this).data('id');
                        GuardarIdPersonal(id);
                    });
                },
                error: function (error) {
                    console.log(error);
                }
            });
        });
        function GuardarIdPersonal(elementoA) {
            $.ajax({
                type: "POST",
                url: "CitasActivas.aspx/GuardarIdPersonal",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ id: elementoA }),
                success: function (data) {
                    console.log(valor);
                }, error: function (xhr, textStatus, errorThrown) {
                    // Manejar cualquier error que ocurra durante la llamada AJAX
                    console.error(errorThrown);
                }

            });
        }
    </script>


</asp:Content>

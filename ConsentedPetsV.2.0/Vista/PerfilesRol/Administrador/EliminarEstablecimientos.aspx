<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/PerfilAdmin.Master" AutoEventWireup="true" CodeBehind="EliminarEstablecimientos.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EliminarEstablecimientos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">

   
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link href="https://cdn.datatables.net/v/dt/jq-3.6.0/dt-1.13.4/datatables.min.css" rel="stylesheet"/>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
    <script src="../../../Scripts/sweetalert.min.js"></script>
    <link href="../../../Styles/sweetalert.css" rel="stylesheet" />
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
                    <th>Eliminar</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Actualizacion de Datos</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="section">
                        <%--<h2 class="py-3">Actualizacion de Datos</h2>--%>
                        <div class="container">
                            <div class="card">
                                <h3>¿Esta Seguro de Eliminar el Establecimiento?</h3>

                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <asp:Button ID="btnEliminar" CssClass="btn btn-danger" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>


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
                                    //var btneli = document.createElement("button");
                                    //btneli.className = 'btn btn-primary';
                                    //btneli.innerHTML = 'eliminar';
                                    //btneli.setAttribute = "type", "button";
                                    //btneli.addEventListener('click', function () {
                                    //    console.log('ddsd');
                                    //});
                                    //return btneli;
                                    return '<button type="button" id="btneliminar" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" data-id="' + data.idVeterinaria + '">Editar</button > ';

                                }
                            }

                        ]
                    });

                    $('#tblTrabajador').on('click', '#btneliminar', function () {
                        console.log('ssdsd');
                        var id = $(this).data('id');
                        console.log(id);
                        GuardarIdPersonal(id);
                    });

                },
                error: function (error) {
                    console.log(error);
                }
            });
        });

        function GuardarIdPersonal(elementoA) {
            console.log('pendejo');
            $.ajax({
                type: "POST",
                url: "EliminarEstablecimientos.aspx/GuardarIdPersonal",
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

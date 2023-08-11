<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/EscuelaCanina/Escuela.Master" AutoEventWireup="true" CodeBehind="ListarActividades.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina.ListarActividades1" %>

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
            background: linear-gradient(#d98567, #243b55);
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <div class="center">
        <h1 style="margin-top: 20px; color: #78fff1">Listar Actividades</h1>
        <div style="width: 1100px">
            <table id="tblUsua" class="table" style="color: white">
                <thead style="color: #78fff1">
                    <tr>
                        <th>Nombre</th>
                        <th>Descripcion</th>
                        <th>Fecha</th>
                        <th>Editar</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>
                <tbody></tbody>
                <tfoot>
                </tfoot>
            </table>
        </div>
    </div>
    <form runat="server">
        <div style="color: lightslategray" class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Eliminacion de Datos</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="section">
                            <%--<h2 class="py-3">Actualizacion de Datos</h2>--%>
                            <div class="container">
                                <div class="card">
                                    <h3>¿Esta Seguro de Eliminar la Actividad?</h3>

                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            <asp:Button ID="btnEliminar" CssClass="btn btn-danger" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="color: lightslategray" class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel2" style="font-family: serif;">Actualizacion de Datos</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body" style="background:#c27c65;">
                        <div class="section">
                            <div class="container">
                                <div class="card" style="padding:35px;">
                                    <h3 style="font-family: serif;">Datos de la Actividad</h3>
                                    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                                    <asp:TextBox ID="txtNombre" runat="server" style="border-color: rosybrown; border-radius: 20px; background-color: #c27c65b0; border-width: 2.5px; text-align: center;"></asp:TextBox>
                                    <asp:Label ID="Label12" runat="server" Text="Descripción"></asp:Label>
                                    <asp:TextBox ID="txtDescripcion" runat="server" style="border-color: rosybrown; border-radius: 20px; background-color: #c27c65b0; border-width: 2.5px; text-align: center;"></asp:TextBox>
                                    <asp:Label ID="Label13" runat="server" Text="Fecha"></asp:Label>
                                    <asp:TextBox ID="txtFecha" runat="server" style="border-color: rosybrown; border-radius: 20px; background-color: #c27c65b0; border-width: 2.5px; text-align: center;"></asp:TextBox>
                                    <br />
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                                  <asp:Calendar ID="calenario" OnSelectionChanged="calenario_SelectionChanged" runat="server" style="border-color: rosybrown; background-color: #c27c65b0; text-align: center;"></asp:Calendar>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Editar" OnClick="Button1_Click" />
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
                url: "ListarActividades.aspx/mtdListar",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var data = response.d;

                    $('#tblUsua').DataTable({
                        data: data,
                        columns: [
                            { data: "nombre" },
                            { data: "descripcion" },
                            { data: "fecha" },
                            {
                                data: null,
                                render: function (data, type, row) {
                                    return '<button type="button" id="btnEditar" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2" data-id="' + data.id + '">Editar</button > ';

                                }
                            },
                            {
                                data: null,
                                render: function (data, type, row) {
                                    return '<button type="button" id="btneliminar" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop" data-id="' + data.id + '">Eliminar</button > ';

                                }
                            }
                        ]
                    });
                    $('#tblUsua').on('click', '#btneliminar', function () {
                        var id = $(this).data('id');
                        GuardarIdPersonal(id);
                    });
                    $('#tblUsua').on('click', '#btnEditar', function () {
                        var id = $(this).data('id');
                        GuardarIdPersonal(id);
                        cargardatos(id);
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
                url: "ListarActividades.aspx/GuardarIdPersonal",
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
        function cargardatos(idProducto) {
            $.ajax({
                type: "POST",
                url: "ListarActividades.aspx/cargardatos",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ id: idProducto }),
                success: function (dat) {
                    var Carga = dat.d;
                    document.getElementById('<%= txtNombre.ClientID %>').value = Carga[0]["nombre"];
                    document.getElementById('<%= txtDescripcion.ClientID %>').value = Carga[0]["descripcion"];
                    document.getElementById('<%= txtFecha.ClientID %>').value = Carga[0]["fecha"];
                }, error: function (xhr, textStatus, errorThrown) {
                    // Manejar cualquier error que ocurra durante la llamada AJAX
                    console.error(errorThrown);
                }
            });
         }

    </script>



</asp:Content>

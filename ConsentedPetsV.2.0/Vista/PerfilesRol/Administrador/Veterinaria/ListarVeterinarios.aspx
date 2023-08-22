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
        .card{

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
        <div style="color:lightslategray" class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content"  style="background-color: #2972d9b3; width:600px">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel" style="color:mintcream">Eliminacion de Datos</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="section">
                            <%--<h2 class="py-3">Actualizacion de Datos</h2>--%>
                            <div class="container">
                                <div class="card" style=" background: #4b92ae;color: mintcream;">
                                    <h3>¿Esta Seguro de Eliminar el Veterinario?</h3>

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
        <div style="color:lightslategray" class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content" style="background-color: #2972d9b3;">
                    <div class="modal-header">
                        <h5 class="modal-title" style="color:mintcream" id="staticBackdropLabel2">Actualizacion de Datos</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body" style="color:lightslategray">
                        <div class="section">
                            <div class="container">
                                <div class="card" style=" background: #4b92ae;color: mintcream;">
                                    <h3>Datos del Empleado</h3>
                                    <asp:Label ID="Label1" runat="server" Text="Especializacion"></asp:Label>
                                    <asp:TextBox ID="txtEspecializacion" runat="server"></asp:TextBox> 
                                    <asp:Label ID="Label12" runat="server" Text="Experiencia"></asp:Label>
                                    <asp:TextBox ID="txtExperiencia" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label13" runat="server" Text="Profesion"></asp:Label>
                                    <asp:TextBox ID="txtProfesion" runat="server"></asp:TextBox>
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
                            { data: "profesion" },
                            {
                                data: null,
                                render: function (data, type, row) {
                                    return '<button type="button" id="btnEditar" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2" data-id="' + data.idUsuario + '">Editar</button > ';

                                }
                            },
                            {
                                data: null,
                                render: function (data, type, row) {
                                    return '<button type="button" id="btneliminar" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop" data-id="' + data.idUsuario + '">Eliminar</button > ';

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
                url: "ListarVeterinarios.aspx/GuardarIdPersonal",
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
                url: "ListarVeterinarios.aspx/cargardatos",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ id: idProducto }),
                success: function (dat) {
                    var Carga = dat.d;
                    document.getElementById('<%= txtProfesion.ClientID %>').value = Carga[0]["profesion"];
                    document.getElementById('<%= txtEspecializacion.ClientID %>').value = Carga[0]["especializacion"];
                    document.getElementById('<%= txtExperiencia.ClientID %>').value = Carga[0]["experiencia"];
                }, error: function (xhr, textStatus, errorThrown) {
                    // Manejar cualquier error que ocurra durante la llamada AJAX
                    console.error(errorThrown);
                }
            });
        }


        document.getElementById("btnEditar").addEventListener("click", function () {
            var div = document.getElementById("ContentBodyAdministrador");
            if (div.style.opacity === "0") {
                div.style.opacity = "0.6";
            } else {
                div.style.opacity = "0";
            }
        });


    </script>

</asp:Content>

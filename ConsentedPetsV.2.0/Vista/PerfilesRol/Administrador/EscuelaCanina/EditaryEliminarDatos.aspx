<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/EscuelaCanina/Escuela.Master" AutoEventWireup="true" CodeBehind="EditaryEliminarDatos.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina.EditaryEliminarDatos" %>

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

    <form id="form1" runat="server">
        <h2>Editar y Elimnar</h2> <asp:DropDownList ID="ddlTipo" runat="server" OnSelectedIndexChanged="ddlTipo_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
        <div>
            <div id="dataTableContainer" class="table-responsive">
                <table id="tblTrabajador" class="table table-striped table-bordered dt-responsive nowrap " style="width: 100%">
                    <thead>
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
                </table>
            </div>
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
                                    <div class="card__image-container">
                                        <img class="card__image" src="Imagenes/Halo.PNG" alt="" />
                                    </div>

                                    <svg version="1.1" xmlns="http://www.w3.org/2000/svg">
                                        <filter id="blur">
                                            <feGaussianBlur stdDeviation="15" />
                                        </filter>
                                    </svg>

                                    <svg class="card__svg" viewBox="0 0 800 500">

                                        <path d="M 0 100 Q 50 200 100 250 Q 250 400 350 300 C 400 250 550 150 650 300 Q 750 450 800 400 L 800 500 L 0 500" stroke="transparent" fill="#333" />
                                        <path class="card__line" d="M 0 100 Q 50 200 100 250 Q 250 400 350 300 C 400 250 550 150 650 300 Q 750 450 800 400" stroke="pink" stroke-width="3" fill="transparent" />
                                    </svg>

                                    <div class="card__content">
                                        <h1 class="card__title">Datos Personales</h1>

                                        <asp:Label ID="Label1" runat="server" Text="Label">Documento</asp:Label>
                                        <asp:TextBox ID="txtDocumento" CssClass="miTextBox" runat="server"></asp:TextBox><br />

                                        <asp:Label ID="Label2" runat="server" Text="Label">Nombre</asp:Label>
                                        <asp:TextBox ID="txtNombre" CssClass="miTextBox" runat="server"></asp:TextBox><br />

                                        <asp:Label ID="Label3" runat="server" Text="Label">Apellido</asp:Label>
                                        <asp:TextBox ID="txtApellido" CssClass="miTextBox" runat="server"></asp:TextBox><br />

                                        <asp:Label ID="Label4" runat="server" Text="Label">Telefono</asp:Label>
                                        <asp:TextBox ID="txtTelefono" CssClass="miTextBox" runat="server"></asp:TextBox><br />

                                        <asp:Label ID="Label5" runat="server" Text="Label">Estado</asp:Label>
                                        <asp:TextBox ID="txtEstado" CssClass="miTextBox" runat="server"></asp:TextBox><br />

                                        <asp:Label ID="Label6" runat="server" Text="Label">Email</asp:Label>
                                        <asp:TextBox ID="txtEmail" CssClass="miTextBox" runat="server"></asp:TextBox><br />

                                        <asp:Label ID="Label7" runat="server" Text="Label">Contraseña</asp:Label>
                                        <asp:TextBox ID="txtContraseña" CssClass="miTextBox" runat="server"></asp:TextBox><br />

                                        <asp:Label ID="Label8" runat="server" Text="Label">Tipo Personal</asp:Label>
                                        <asp:DropDownList ID="ddlTipoPersonal" CssClass="miTextBox" runat="server"></asp:DropDownList><br />

                                        <asp:Label ID="Label9" runat="server" Text="Label">Ciudad</asp:Label>
                                        <asp:DropDownList ID="ddlCiudad" CssClass="miTextBox" runat="server"></asp:DropDownList><br />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <asp:Button ID="btnEliminar" CssClass="btn btn-danger" runat="server" Text="Eliminar" />
                            <asp:Button ID="btnActualizar" CssClass="btn btn-primary" runat="server" Text="Actualizar" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
    </form>

    <script>

        $(document).ready(function () {
            $.ajax({
                type: "POST",
                url: "EditaryEliminarDatos.aspx/mtdLista",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var data = response.d;

                    $('#tblTrabajador').DataTable({
                        responsive: true,
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
                                    return '<button type="button" class="btn btn-update btn-primary" data-id-personal="' + data.idPersonal + '" data-bs-toggle="modal" data-bs-target="#staticBackdrop"> Editar </button > ';
                                }
                            }

                        ]
                    });

                    $('#tblTrabajador').on('click', '.btn-delete', function () {
                        var id = $(this).data('idPersonal');
                        GuardarIdPersonal(id)


                    });

                    $('#tblTrabajador').on('click', '.btn-update', function () {
                        var id = $(this).data('idPersonal');
                        GuardarIdPersonal(id)
                        MostrarIdPersonal(id)
                    });


                },
                error: function (error) {
                    console.log(error);
                }
            });
        function GuardarIdPersonal(id) {
            $.ajax({
                type: "POST",
                url: "ListarPersonal.aspx/GuardarIdPersonal",
                data: JSON.stringify({ idPersonal: id }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    // Lógica adicional si es necesario
                },
                error: function (error) {
                    console.log(error);
                }
            });


        }

        function MostrarIdPersonal(id) {
            $.ajax({
                type: "POST",
                url: "ListarPersonal.aspx/mtdMostarPersonal",
                data: JSON.stringify({ idPersonal: id }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    // Actualiza los campos de la ventana modal con los datos recibidos en la respuesta
                    var data = response.d;

                    document.getElementById('<%= txtId.ClientID %>').value = id;
                    $('#txtDocumento').val(data.Documento);
                    $('#txtNombre').val(data.Nombre);
                    $('#txtApellido').val(data.Apellido);
                    $('#txtTelefono').val(data.Telefono);
                    $('#txtEstado').val(data.Estado);
                    $('#txtEmail').val(data.Email);
                    $('#txtContraseña').val(data.Contraseña);
                    $('#ddlTipoPersonal').val(data.idTipoPersonal);
                    $('#ddlCiudad').val(data.idCiudad);
                    CargarIdCombo(data.idTipoPersonal);
                    CargarIdComboCiudad();
                },
                error: function (error) {
                    console.log(error);
                }
            });
        }
        function CargarIdCombo(idTipoPersonal) {
            var ddl = document.getElementById('<%= ddlTipoPersonal.ClientID%>')
            for (var i = 0; i < ddl.options.length; i++) {
                if (ddl.options[i].value === idTipoPersonal.toString()) {
                    ddl.seletedIndex = i;
                    break;
                }
            }
        }
        function CargarIdComboCiudad(idCiudad) {
            var ddl1 = document.getElementById('<%= ddlCiudad.ClientID%>')
            for (var i = 0; i < ddl1.options.length; i++) {
                if (ddl1.options[i].value === idCiudad.toString()) {
                    ddl1.seletedIndex = i;
                    break;
                }
            }
        }



    </script>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/EscuelaCanina/Escuela.Master" AutoEventWireup="true" CodeBehind="ListarCursos.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina.ListarCursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">


    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link href="https://cdn.datatables.net/v/dt/jq-3.6.0/dt-1.13.4/datatables.min.css" rel="stylesheet" />
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <link href="../../../Css/AgregarVeter.css" rel="stylesheet" />
    
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
        <h1 style="margin-top: 20px; color: #78fff1">Listar Cursos</h1>
        <div style="width: 1100px">
            <table id="tblUsua" class="table" style="color: white">
                <thead style="color: #78fff1">
                    <tr>
                        <th>Nombre</th>
                        <th>Descripcion</th>
                        <th>Precio</th>             
                        <th>Editar</th>
                        <th>ELiminar</th>
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
                                    <h3>¿Esta Seguro de Eliminar el Curso?</h3>

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
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel2">Actualizacion de Datos</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body" style="color:lightslategray">
                        <div class="section">
                            <div class="container">
                                <div class="card">
                                    <h3>Datos del Curso</h3>
                                    <img runat="server" id="imagen" src="#" style="width:20px ;height:20px" />
                                    <asp:Image ID="Image1" runat="server" style="width:20px ;height:20px" />
                                    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox> 
                                    <asp:Label ID="Label12" runat="server" Text="Descripcion"></asp:Label>
                                    <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label13" runat="server" Text="Precio"></asp:Label>
                                    <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label2" runat="server" Text="Imagen"></asp:Label>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <asp:Label ID="Label3" runat="server" Text="*En caso de cambio"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                            <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Editar" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" Style="display: none" AutoPostBack="false" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
    <script>
        $(document).ready(function () {
            var id = 0;
            $.ajax({
                type: "POST",
                url: "ListarCursos.aspx/mtdLista",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var data = response.d;

                    $('#tblUsua').DataTable({
                        data: data,
                        columns: [
                            { data: "nombre" },
                            { data: "descripcion" },
                            { data: "precio" },
                            {
                                data: null,
                                render: function (data, type, row) {
                                    return '<button type="button" id="btnEditar" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2" data-id="' + data.idCurso + '">Editar</button > ';
                                 
                                }
                            },
                            {
                                data: null,
                                render: function (data, type, row) {
                                    return '<button type="button" id="btneliminar" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop" data-id="' + data.idCurso + '">Eliminar</button > ';

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
                        activarBoton();
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
                url: "ListarCursos.aspx/GuardarIdPersonal",
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
                url: "ListarCursos.aspx/cargardatos",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ id: idProducto }),
                success: function (dat) {
                    var Carga = dat.d;
                    document.getElementById('<%= txtNombre.ClientID %>').value = Carga[0]["nombre"];
                    document.getElementById('<%= txtDescripcion.ClientID %>').value = Carga[0]["descripcion"];
                    document.getElementById('<%= txtPrecio.ClientID %>').value = Carga[0]["precio"];
                    var ruta = Carga[0]["foto"];
                    var imaagen=document.getElementById('imagen');
                    imaagen.src = ruta;

                }, error: function (xhr, textStatus, errorThrown) {
                    // Manejar cualquier error que ocurra durante la llamada AJAX
                    console.error(errorThrown);
                }
            });
            
        }
        function activarBoton() {
            // Obtiene una referencia al botón
            var boton = document.getElementById('<%= Button2.ClientID %>');

             // Simula el clic en el botón
             if (boton) {
                 boton.click();
             }
         }
    </script>
</asp:Content>

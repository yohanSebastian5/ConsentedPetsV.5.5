<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/Veterinaria/Veterinaria.Master" AutoEventWireup="true" CodeBehind="ServiciosRegistrados.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.Veterinaria.RegistrosRegistrados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="../../../../Scripts/sweetalert.min.js"></script>
    <link href="../../../../Styles/sweetalert.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
    <style>
        .modal-backdrop.show {
            position: static; /* Cambia la posición a "static" en lugar de "fixed" */
            top: auto; /* Elimina la propiedad "top" */
            left: auto; /* Elimina la propiedad "left" */
            z-index: auto; /* Elimina la propiedad "z-index" */
            width: auto; /* Elimina la propiedad "width" */
            height: auto; /* Elimina la propiedad "height" */
            /* Agrega más propiedades según sea necesario */
        }

        body {
            background: #5286e7
        }

        main {
            background: #5286e76b;
        }

        .modal {
            max-width: 700px;
        }

        .card {
            background: #4b92ae;
            width: 600px;
            color: mintcream;
            font-size: 18px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <link href="../../../PaginaVeterinaria/css/style.css" rel="stylesheet" />
    <div class="container-fluid py-5" id="servicios">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-6">
                    <h1 class="section-title position-relative mb-5" style="color: mintcream;">Servicios Registrados</h1>
                </div>
                <div class="col-lg-6 mb-5 mb-lg-0 pb-5 pb-lg-0"></div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="owl-carousel service-carousel" style="display: grid; grid-template-columns: auto auto; gap: 20px;">
                        <asp:Repeater ID="repServicio" runat="server">
                            <ItemTemplate>
                                <div class="service-item">

                                    <div class="service-img mx-auto">
                                        <img class="rounded-circle w-100 h-100 bg-light p-3" src='<%# ResolveUrl("~/Vista/imagenes/servicios/") + Eval("foto") %>' style="object-fit: cover;">
                                    </div>
                                    <div class="position-relative text-center bg-light rounded p-4 pb-5" style="margin-top: -75px;">
                                        <h5 class="font-weight-semi-bold mt-5 mb-3 pt-5"><%#Eval("nombre")%></h5>
                                        <p><%#Eval("descripcion")%></p>
                                        <a id="precio" style="color: #555555">
                                            <labe>Precio: </labe>
                                            <%#Eval("precio")%></a><br />
                                        <br />
                                        <h2 style="display: none" id="idV" class="btn btn-secondary" contenteditable="inherit"><%#Eval("idServicioV") %></h2>
                                        <a id="Editar" onclick="listar(this)" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#ModalEditar">Editar </a>
                                        <h2 style="display: none" id="idV3" class="btn btn-danger" contenteditable="inherit"><%#Eval("idServicioV") %></h2>
                                        <a id="Eliminar" onclick="listar(this)" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Eliminar </a>

                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <form runat="server">


        <div class="modal" id="staticBackdrop" style="max-width: 700px; background: rgb(103, 142, 171);" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-header">
                <h5 class="modal-title" style="color: white" id="exampleModaEliminar">Eliminar Servicio</h5>

            </div>
            <div class="modal-body">
                <div class="section">
                    <%--<h2 class="py-3">Actualizacion de Datos</h2>--%>
                    <div class="container">
                        <div class="card" style="background: #4b92ae;">
                            <h3 style="color:mintcream">¿Esta Seguro de Eliminar el Servicio?</h3>

                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="Button3" CssClass="btn btn-secondary" runat="server" Text="Cerrar" />
                    <asp:Button ID="btnEliminar" CssClass="btn btn-danger" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
                </div>
            </div>
        </div>

        <div class="modal" id="ModalEditar" style="max-width: 700px; background: rgb(103, 142, 171);" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-header">
                <h5 class="modal-title" style="color: white" id="exampleModalEditar">EDITAR SERVICIO</h5>

            </div>
            <div class="modal-body" style="color: lightslategray">
                <div class="section">
                    <div class="container">
                        <div class="card" style="background: #4b92ae;">
                            <h3 style="color: mintcream">Datos del Servicio</h3>
                            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                            <asp:Label ID="Label12" runat="server" Text="Descripcion"></asp:Label>
                            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                            <asp:Label ID="Label13" runat="server" Text="Precio"></asp:Label>
                            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                            <asp:Label ID="Label2" runat="server" Text="Foto"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server" Style="color: mintcream" />
                            <h6>En Caso de Cambio*</h6>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="Button12" CssClass="btn btn-danger" runat="server" Text="Cerrar" />
                    <asp:Button ID="Button1" CssClass="btn btn-secondary" runat="server" Text="Editar"  OnClick="btnEditar_Click" />
                </div>
            </div>
        </div>
        <button type="button" id="Button2" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="display: none" onclick="cargardatos()">Opcionesl</button>
        <button onclick="openModal()" style="display: none">Abrir Modal</button>

    </form>


    <!-- Services End -->
    <script>
        function listar(elementoA) {
            var valor = elementoA.previousElementSibling.innerText;
            $.ajax({
                type: "POST",
                url: "ServiciosRegistrados.aspx/ListarV",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ tipo: valor }),
                success: function (dat) {
                    cargardatos();
                }, error: function (xhr, textStatus, errorThrown) {
                    // Manejar cualquier error que ocurra durante la llamada AJAX
                    console.error(errorThrown);
                }
            });
        }

        function cargardatos() {
            $.ajax({
                type: "POST",
                url: "ServiciosRegistrados.aspx/cargardatos",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (dat) {
                    var Carga = dat.d;
                    document.getElementById('<%= txtNombre.ClientID %>').value = Carga[0]["nombre"];
                    document.getElementById('<%= txtPrecio.ClientID %>').value = Carga[0]["precio"];
                    document.getElementById('<%= txtDescripcion.ClientID %>').value = Carga[0]["descripcion"];
                }, error: function (xhr, textStatus, errorThrown) {
                    // Manejar cualquier error que ocurra durante la llamada AJAX
                    console.error(errorThrown);
                }
            });
        }

        function registrarYMostrarSweetAlert() {
            // Realiza las operaciones de actualización aquí
            // ...

            // Muestra el SweetAlert
            swal('¡Informacion Actualizada!', 'Su Servicio ha sido actualizado con éxito', 'success');

            // Devuelve false para evitar el postback
            return false;
        }

    </script>


</asp:Content>

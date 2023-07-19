<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/Veterinaria/Veterinaria.Master" AutoEventWireup="true" CodeBehind="ServiciosRegistrados.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.Veterinaria.RegistrosRegistrados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <link href="../../../PaginaVeterinaria/css/style.css" rel="stylesheet" />
    <div class="container-fluid py-5" id="servicios">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-6">
                    <h1 class="section-title position-relative mb-5">Servicios</h1>
                </div>
                <div class="col-lg-6 mb-5 mb-lg-0 pb-5 pb-lg-0"></div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="owl-carousel service-carousel">
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
                                        <h2 style="display: none" id="idV" class="Pet-text" contenteditable="inherit"><%#Eval("idServicioV") %></h2>
                                        <a id="Editar" onclick="listar(this)" class="btn-primary" data-bs-toggle="modal" data-bs-target="#ModalEditar">Opciones </a>
                                        <h2 style="display: none" id="idV3" class="Pet-text" contenteditable="inherit"><%#Eval("idServicioV") %></h2>
                                        <a id="Eliminar" onclick="listar(this)" class="btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Eliminar </a>

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
        <div class="modal" id="ModalOpciones" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-body">
            </div>
            <div class="modal-footer">
                <button type="button" onclick="cargardatos()" class="btn btn-secondary" data-bs-dismiss="modal" data-bs-target="#ModalEditar">Editar</button>
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Eliminar</button>
            </div>
        </div>

        <div class="modal" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModaEliminar">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="section">
                    <%--<h2 class="py-3">Actualizacion de Datos</h2>--%>
                    <div class="container">
                        <div class="card">
                            <h3>¿Esta Seguro de Eliminar el Profesor?</h3>

                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    <asp:Button ID="btnEliminar" CssClass="btn btn-danger" runat="server" Text="Eliminar" />
                </div>
            </div>
        </div>

        <div class="modal" id="ModalEditar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalEditar">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" style="color: lightslategray">
                <div class="section">
                    <div class="container">
                        <div class="card">
                            <h3>Datos del Empleado</h3>
                            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                            <asp:Label ID="Label12" runat="server" Text="Descripcion"></asp:Label>
                            <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                            <asp:Label ID="Label13" runat="server" Text="Precio"></asp:Label>
                            <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                            <asp:Label ID="Label2" runat="server" Text="Foto"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <h6>En Caso de Cambio*</h6>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="Button1" CssClass="btn btn-secondary" runat="server" Text="Editar" OnClick="btnEditar_Click" />
                </div>
            </div>
        </div>
        <button type="button" id="Button2" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" onclick="cargardatos()">Opcionesl</button>
        <button onclick="openModal()">Abrir Modal</button>
        <%--<button type="button"  class="btn btn-secondary" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#ModalOpciones">Cerrar</button>--%>
        <%--<asp:Button ID="Button3" CssClass="btn-danger" runat="server" Text="Editar"  data-bs-toggle="modal" data-bs-target="#staticBackdropLabel3" />--%>
        <%--            </ContentTemplate>
        </asp:UpdatePanel>--%>
    </form>
    <%--<button type="button" id="btnEditar" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2" style="display: none">Editar</button>--%>


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

    </script>


</asp:Content>

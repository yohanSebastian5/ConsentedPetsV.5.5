<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/Veterinaria/Veterinaria.Master" AutoEventWireup="true" CodeBehind="ServiciosRegistrados.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.Veterinaria.RegistrosRegistrados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
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
                                            <%#Eval("precio")%></a>
                                        <h2 style="display: none" id="idV" class="Pet-text" contenteditable="inherit"><%#Eval("idServicioV") %></h2>
                                        <a id="enlace" onclick="cargardatos(this)" class="btn-primary ">Editar 

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
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>


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
                    </div>
                </div>
                <div style="color: lightslategray"; class="modal fade" id="ModalEditar">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel2">Actualizacion de Datos</h5>
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
                                            <h6>En Caso de Cambio*</h6>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                    <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" OnClientClick="modal(this)" Text="Editar" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div><%--<button type="button" id="Button2" class="btn btn-secondary" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#ModalEditar">Cerrar</button>--%>
                <asp:Button ID="Button2" CssClass="btn-danger" runat="server" Text="Editar" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#ModalEditar" />


            </ContentTemplate>
        </asp:UpdatePanel>

    </form>
    <%--<button type="button" id="btnEditar" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2" style="display: none">Editar</button>--%>


    <!-- Services End -->
    <script>
        function listarVet(elementoA) {
            var valor = elementoA.previousElementSibling.innerText;
            $.ajax({
                type: "POST",
                url: "ServiciosRegistrados.aspx/ListarV",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ tipo: valor }),
                success: function (data) {
                    console.log(valor);
                }, error: function (xhr, textStatus, errorThrown) {
                    // Manejar cualquier error que ocurra durante la llamada AJAX
                    console.error(errorThrown);
                }

            });
            cargardatos(valor);
        }
        function modal(x) {
            document.getElementById("ModalEditar").style.display = "block";
        }
        function activarBoton() {
            // Obtiene una referencia al botón
            var boton = document.getElementById('<%= Button2.ClientID %>');

            // Simula el clic en el botón
            if (boton) {
                boton.click();
            }
        }
        function cargardatos(elementoA) {
            var valor = elementoA.previousElementSibling.innerText;
            $.ajax({
                type: "POST",
                url: "ServiciosRegistrados.aspx/cargardatos",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ tipo: valor }),
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

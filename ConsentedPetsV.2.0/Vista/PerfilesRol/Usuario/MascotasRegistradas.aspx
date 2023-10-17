<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Usuario/PerfilUsuario.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="MascotasRegistradas.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Usuario.MascotasRegistradas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="../../../../Scripts/sweetalert.min.js"></script>
    <link href="../../../../Styles/sweetalert.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <link href="../../Css/MascotasRegistradasUsuario.css" rel="stylesheet" />




    <div class="main">
        <div class="row container justify-content-evenly">

            <ul class="cards">
                <asp:Repeater ID="repMascota" runat="server">
                    <itemtemplate>
                        <li class="cards_item">
                            <div class="card">
                                <div class="card_image">
                                    <img src='<%# ResolveUrl("~/Vista/imagenes/ImagenesMascota/") + Eval("foto") %>' />
                                </div>
                                <div class="card_content">
                                    <h2 class="card_title"><%# Eval("nombre") %></h2>
                                    <div class="card_text">
                                        <p>
                                            <label>Especie:</label>
                                            <%# Eval("especie") %>
                                            <br />
                                            <label>Raza:</label>
                                            <%# Eval("raza") %>
                                            <br />
                                            <label>Edad:</label>
                                            <%# Eval("edad") %>
                                            <br />
                                            <label>Condicion Medica:</label>
                                            <%# Eval("condicionMedica") %>
                                        </p>
                                        <hr />
                                        <div style="display: flex; justify-content: space-around; align-items: center">


                                            <h2 style="display: none" id="idV" class="btn btn-secondary" contenteditable="inherit"><%#Eval("idMascota") %></h2>
                                            <a id="Editar" onclick="listar(this)" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ModalEditar">Editar </a>
                                            <h2 style="display: none" id="idV3" class="btn btn-danger" contenteditable="inherit"><%#Eval("idMascota") %></h2>
                                            <a id="Eliminar"  class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Eliminar </a>



                                            <%--       <asp:Button runat="server" class="bg-primary" Style="color: white; font-size: 20px; border-color: #0d6efd" ID="btnEditar" Text="Editar" OnClick="btnEditar_Click" CommandArgument='<%# Eval ("idMascota") %>' data-toggle="modal" data-target="#modal1"></asp:Button>
                                            <asp:Button runat="server" class="bg-danger" Style="color: white; font-size: 20px; border-color: #dc3545" ID="btnEliminar" Text="Eliminar " OnClick="btnEliminar_Click"></asp:Button>
                                            --%>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </li>
                    </itemtemplate>
                </asp:Repeater>
            </ul>

        </div>
    </div>


    <div class="modal" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-content modal-dialog-centered modal-dialog " style="max-width: 700px; background: rgb(103, 142, 171);">
            <div class="modal-header">
                <h5 class="modal-title" style="color: white" id="exampleModaEliminar">Eliminar Mascota</h5>

            </div>
            <div class="modal-body">
                <div class="section">
                    <%--<h2 class="py-3">Actualizacion de Datos</h2>--%>
                    <div class="container">
                        <div class="card" style="background: #4b92ae;height:50px ">
                            <h3 style="color: mintcream">¿Esta Seguro de Eliminar la Mascota?</h3>

                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="Button3" CssClass="btn btn-secondary" runat="server" Text="Cerrar" />
                    <asp:Button ID="btnEliminar" CssClass="btn btn-danger" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
                </div>
            </div>
        </div>
    </div>

    <div class="modal" id="ModalEditar" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-content modal-dialog-centered modal-dialog" style="background-color: transparent">
            <div class="modal-header">
            </div>
            <div class="modal-body" style="color: lightslategray; max-width: 600px">
                <div class="section">
                    <div class="container">
                        <div class="card" style="background: #4b92ae;color:antiquewhite; border: 2px solid; border-color: mintcream; padding: 10px">
                            <h3 style="color: mintcream">Datos de la Mascota</h3>
                            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                            <asp:Label ID="Label12" runat="server" Text="Descripcion"></asp:Label>
                            <asp:TextBox ID="txtEspecie" runat="server"></asp:TextBox>
                            <asp:Label ID="Label13" runat="server" Text="Precio"></asp:Label>
                            <asp:TextBox ID="txtRaza" runat="server"></asp:TextBox>
                            <asp:Label ID="Label14" runat="server" Text="Precio"></asp:Label>
                            <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
                            <asp:Label ID="Label15" runat="server" Text="Precio"></asp:Label>
                            <asp:TextBox ID="txtCondicion" runat="server"></asp:TextBox>
                            <asp:Label ID="Label2" runat="server" Text="Foto"></asp:Label>
                            <asp:FileUpload ID="FileUpload1" runat="server" Style="color: mintcream" />
                            <h6>En Caso de Cambio*</h6>
                            <div style="display: flex; justify-content: space-around">
                                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Editar" OnClick="btnEditar_Click" />
                                <asp:Button ID="Button12" CssClass="btn btn-secondary" runat="server" Text="Cerrar" />
                            </div>
                            
                        </div>

                    </div>

                </div>

            </div>
        </div>
    </div>
    <script>
        function listar(elementoA) {
            var valor = elementoA.previousElementSibling.innerText;
            $.ajax({
                type: "POST",
                url: "MascotasRegistradas.aspx/ListarV",
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
                url: "MascotasRegistradas.aspx/cargardatos",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (dat) {
                    var Carga = dat.d;
                    document.getElementById('<%= txtNombre.ClientID %>').value = Carga[0]["nombre"];
                    document.getElementById('<%= txtEspecie.ClientID %>').value = Carga[0]["especie"];
                    document.getElementById('<%= txtRaza.ClientID %>').value = Carga[0]["raza"];
                    document.getElementById('<%= txtEdad.ClientID %>').value = Carga[0]["edad"];
                    document.getElementById('<%= txtCondicion.ClientID %>').value = Carga[0]["condicionMedica"];
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





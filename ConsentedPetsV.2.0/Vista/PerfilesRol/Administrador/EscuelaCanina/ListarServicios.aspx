<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/EscuelaCanina/Escuela.Master" AutoEventWireup="true" CodeBehind="ListarServicios.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina.ListarServicios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="../../css/ListarServicios.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <h1 style="justify-content: center; align-items: center; display: flex; margin-top: 50px; color: white; font-size: 69px;">SERVICIOS REGISTRADOS</h1>

    <form runat="server">
        <div class="cards">
            <asp:Repeater ID="rpServis" runat="server">
                <ItemTemplate>

                    <div class="card">
                        <div class="card__image-holder">
                            <img class="card__image" src="<%# ResolveUrl("~/Vista/imagenes/ServicioCursoE/") + Eval("foto") %>" />
                        </div>
                        <div class="card-title">
                            <h2 style="display: none;"><%# Eval("idServicioV") %></h2>
                            <a href="#" onclick="listarVet(this)" class="toggle-info btn">
                                <span class="left"></span>
                                <span class="right"></span>
                            </a>
                            <h2><%# Eval("nombre") %></h2>
                            </h2>
                        </div>
                        <div class="card-flap flap1">
                            <div class="card-description">
                                <asp:Repeater ID="RpCurso" runat="server">
                                    <ItemTemplate>
                                        <h2 runat="server" id="txtNombre"><%# Eval("nombre") %></h2>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <div class="card-flap flap2">
                                <div class="card-actions">
                                    <a href="#" class="toggle-info btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop2" autopostback="true">Editar</a>
                                    <a href="#" class="toggle-info btn" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Eliminar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>



        </div>
        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                                    <h3>¿Esta Seguro de Eliminar el Servicio?</h3>

                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Editar</button>
                            <asp:Button ID="btnEliminar" CssClass="btn btn-danger" runat="server" Text="Eliminar" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel2">Actualizacion de Datos</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="section">
                            <div class="container">
                                <div class="card">
                                    <h3>Datos del Servicio</h3>
                                    <asp:Image ID="imgS" runat="server" />
                                    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                                    <asp:TextBox ID="txtNombreS" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label6" runat="server" Text="FOTO * en caso de cambio"></asp:Label>
                                    <asp:FileUpload ID="flFotoS" runat="server" />
                                </div>
                            </div>
                        </div>
                        <h3>Cursos Registrados</h3>
                        <asp:DropDownList ID="ddlCursos" runat="server" OnSelectedIndexChanged="ddlCursos_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                        <div class="section">
                            <div class="container">
                                <div class="card">
                                    <h3>Datos del Curso</h3>
                                    <asp:Image ID="Image1" runat="server" />
                                    <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
                                    <asp:TextBox ID="txtNombreC" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label3" runat="server" Text="Descripcion"></asp:Label>
                                    <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label5" runat="server" Text="Precio"></asp:Label>
                                    <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label4" runat="server" Text="FOTO * en caso de cambio"></asp:Label>
                                    <asp:FileUpload ID="flFotoC" runat="server" />
                                </div>
                            </div>
                        </div>


                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Eliminar" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button1_Click" Style="display: none" AutoPostBack="false" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
    <script>
        $(document).ready(function () {
            var zindex = 10;
            $("div.card").click(function (e) {
                e.preventDefault();

                var isShowing = false;

                if ($(this).hasClass("show")) {
                    isShowing = true
                }

                if ($("div.cards").hasClass("showing")) {
                    // a card is already in view
                    $("div.card.show")
                        .removeClass("show");

                    if (isShowing) {
                        // this card was showing - reset the grid
                        $("div.cards")
                            .removeClass("showing");
                    } else {
                        // this card isn't showing - get in with it
                        $(this)
                            .css({ zIndex: zindex })
                            .addClass("show");

                    }

                    zindex++;

                } else {
                    // no cards in view
                    $("div.cards")
                        .addClass("showing");
                    $(this)
                        .css({ zIndex: zindex })
                        .addClass("show");

                    zindex++;
                }

            });
        });
        function listarVet(elementoA) {
            var valor = elementoA.previousElementSibling.innerText;;
            $.ajax({
                type: "POST",
                url: "ListarServicios.aspx/Listar",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ tipo: valor }),
                success: function (response) {
                }, error: function (xhr, textStatus, errorThrown) {
                    // Manejar cualquier error que ocurra durante la llamada AJAX
                    console.error(errorThrown);
                }

            });
            activarBoton();
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

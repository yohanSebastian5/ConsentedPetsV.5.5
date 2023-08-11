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
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
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
                    window.location.href =" ListarCursos.aspx";

                }, error: function (xhr, textStatus, errorThrown) {
                    // Manejar cualquier error que ocurra durante la llamada AJAX
                    console.error(errorThrown);
                }

            });
            
        }
        
    </script>


</asp:Content>

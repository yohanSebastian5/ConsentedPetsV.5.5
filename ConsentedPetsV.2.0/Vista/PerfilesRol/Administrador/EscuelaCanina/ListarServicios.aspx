<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/EscuelaCanina/Escuela.Master" AutoEventWireup="true" CodeBehind="ListarServicios.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina.ListarServicios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="../../css/ListarServicios.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <div class="cards">
        <div class="card">
            <div class="card__image-holder">
                <img class="card__image" src="https://source.unsplash.com/300x225/?wave" alt="wave" />
            </div>
            <div class="card-title">
                <a href="#" class="toggle-info btn">
                    <span class="left"></span>
                    <span class="right"></span>
                </a>
                <h2>Card title
         
                <small>Image from unsplash.com</small>
                </h2>
            </div>
            <div class="card-flap flap1">
                <div class="card-description">
                    This grid is an attempt to make something nice that works on touch devices. Ignoring hover states when they're not available etc.
     
                </div>
                <div class="card-flap flap2">
                    <div class="card-actions">
                        <a href="#" class="toggle-info btn">Read more</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
    </script>

    <script src="../../js/ListarServicios.js"></script>
</asp:Content>

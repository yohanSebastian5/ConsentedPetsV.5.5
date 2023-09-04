<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/Veterinaria/Veterinaria.Master" AutoEventWireup="true" CodeBehind="RegistrarProceso.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.Veterinaria.RegistrarProceso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="../../css/RegistrarProceso.css" rel="stylesheet" />
    <style>
        body{
            color:white;
            background:#4ba4bfdb;
        }
        .ocultar{
            display:none;
        }
    </style>
    <link href="../../../../Styles/sweetalert.css" rel="stylesheet" />
    <script src="../../../../Scripts/sweetalert.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <div class="container">
        <div class="ui">
            <div class="ui__head">
                <div class="avatar">
                    <asp:Image src="../../../imagenes/logoimg.png" id="Image1" alt="car"  runat="server"></asp:Image>
                </div>

                <div class="tab-group">
                    <button class="tab" id="tab-signup" class="active">Registra Tus Procesos</button>
<%--                    <button class="tab" id="tab-login">Log In</button>--%>
                </div>
            </div>

            <div class="ui__body">
                <form class="form-signup is-shown" runat="server">
                    <div class="form-group">
                        <label>Nombre</label>
                        <input id="txtNombre" runat="server" type="text">
                        <div class="input-anim" aria-hidden="true" role="presentation"></div>
                    </div>

                    <div class="form-group">
                        <label>Descripcion</label>
                        <input id="txtDescripcion" runat="server" type="text">
                        <div class="input-anim" aria-hidden="true" role="presentation"></div>
                    </div>

                    <div class="form-group">
                        <label>Elegir Foto</label>
                        <asp:FileUpload ID="FlImagenV"  runat="server" onchange="cargar(this);" />
                        <div class="input-anim" aria-hidden="true" role="presentation"></div>
                    </div>

                    <div class="form-group form-group--submit">
                        <button id="Regis" runat="server" class="submit">Registrar</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
    <script>
        (function ($) {

            var $formGroup = $(".form-group");
            var $signUp = $(".form-signup");
        
            //   Toggle forms
            $("form.is-shown").find(".form-group").addClass("is-shown");

            $("#tab-signup").on("click", function () {
                $(".tab").removeClass("active");
                $(this).addClass("active");

                $("form").removeClass("is-shown");
                $signUp.addClass("is-shown");
                $formGroup.removeClass("is-shown");
                $signUp.find(".form-group").addClass("is-shown");
            });

            //   Input Highlites
            $("input").on("focus", function () {
                $("input").parent().removeClass("selected");
                $(this).parent().addClass("selected");
            });

            $("input").on("focusout", function () {
                $("input").parent().removeClass("selected");
            });


        })(jQuery);

        function cargar(input) {
            console.log('cae');
            if (input.files[0]) {
                var img = new FileReader();
                console.log('caer');
                img.onload = function (e) {
                    document.getElementById("<%= Image1.ClientID %>").src = e.target.result;
                      console.log(e.target.result);
                  };
                  img.readAsDataURL(input.files[0]);
              }



          }
    </script>
</asp:Content>

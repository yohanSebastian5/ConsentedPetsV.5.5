<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/PetShop/PetShop.Master" AutoEventWireup="true" CodeBehind="ProductosRegistrados.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.PetShop.ProductosRegistrados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
   

     <!-- jQuery -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
   

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>Klassy Cafe - Restaurant HTML Template</title>
    <!--TemplateMo 558 Klassy Cafehttps://templatemo.com/tm-558-klassy-cafe-->
    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="../../../PaginaTienda/assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="../../../PaginaTienda/assets/css/font-awesome.css">

    <link rel="stylesheet" href="../../../PaginaTienda/assets/css/templatemo-klassy-cafe.css">

    <link rel="stylesheet" href="../../../PaginaTienda/assets/css/owl-carousel.css">

    <link rel="stylesheet" href="../../../PaginaTienda/assets/css/lightbox.css">
</head>


    <form runat="server">
        <!-- ***** Menu Area Starts ***** -->

        <section class="section" id="offers">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 offset-lg-4 text-center">
                                <div class="section-heading">
                                    <h6>Productos</h6>
                                    <h2>Los mejores productos para tu mascota</h2>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="row" id="tabs">
                                    <div class="col-lg-12">


                                        <div class="heading-tabs">
                                            <div class="row">


                                                <div class="col-lg-6 offset-lg-3">
                                                    <ul>
                                                        <asp:Repeater runat="server" ID="repCateg">
                                                            <ItemTemplate>
                                                                <li>
                                                                    <h2 style="display: none" id="idV" class="Pet-text" contenteditable="inherit"><%#Eval("idCategoriaPS") %></h2>
                                                                    <a runat="server" id="idCategoria" onclick="listarVet(this)" href='#tabs-1 '> <%# Eval("nombre") %>
                                                                    </a>

                                                                </li>




                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                        <asp:Button ID="btnProductos" Style="display: none" OnClick="btnProductos_Click" runat="server" Text="Button" />
                                                    </ul>
                                                </div>

                                            </div>

                                        </div>

                                    </div>
                                    <div class="col-lg-12">
                                        <section class='tabs-content' style="width: 100%">
                                            <article id='tabs-1'>


                                                <div class="row">


                                                    <div class="col-lg-12">
                                                        <div class="list-container col-lg-12">
                                                            <asp:Repeater runat="server" ID="repProduc">
                                                                <ItemTemplate>
                                                                    <div class="tab-item">

                                                                        <img style="width: 65px; height:70px;" src='<%# ResolveUrl("~/Vista/imagenes/ImagenesProductoCat/") + Eval("foto") %>' />
                                                                        <h4><%# Eval("nombre") %></h4>
                                                                        <p><%# Eval("descripcion") %></p>
                                                                        <div class="price">
                                                                            <h6>$ <%# Eval("precioP") %></h6>
                                                                        </div>



                                                                    </div>
                                                                </ItemTemplate>
                                                            </asp:Repeater>

                                                            <!-- Aquí puedes agregar más elementos -->
                                                        </div>
                                                    </div>



                                                </div>

                                            </article>


                                        </section>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </section>

        <!-- ***** Chefs Area Ends ***** -->

      


    </form>
    <!-- jQuery -->
    <script src="../../../PaginaTienda/assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="../../../PaginaTienda/assets/js/popper.js"></script>
    <script src="../../../PaginaTienda/assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="../../../PaginaTienda/assets/js/owl-carousel.js"></script>
    <script src="../../../PaginaTienda/assets/js/accordions.js"></script>
    <script src="../../../PaginaTienda/assets/js/datepicker.js"></script>
    <script src="../../../PaginaTienda/assets/js/scrollreveal.min.js"></script>
    <script src="../../../PaginaTienda/assets/js/waypoints.min.js"></script>
    <script src="../../../PaginaTienda/assets/js/jquery.counterup.min.js"></script>
    <script src="../../../PaginaTienda/assets/js/imgfix.min.js"></script>
    <script src="../../../PaginaTienda/assets/js/slick.js"></script>
    <script src="../../../PaginaTienda/assets/js/lightbox.js"></script>
    <script src="../../../PaginaTienda/assets/js/isotope.js"></script>

    <!-- Global Init -->
    <script src="../../../PaginaTienda/assets/js/custom.js"></script>
    <script>

        $(function () {
            var selectedClass = "";
            $("p").click(function () {
                selectedClass = $(this).attr("data-rel");
                $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("." + selectedClass).fadeOut();
                setTimeout(function () {
                    $("." + selectedClass).fadeIn();
                    $("#portfolio").fadeTo(50, 1);
                }, 500);

            });
        });

    </script>

   
    <script>
        function listarVet(elementoA) {
            var valor = elementoA.previousElementSibling.innerText;;
            $.ajax({
                type: "POST",
                url: "ProductosRegistrados.aspx/ListarV",
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

            activarBoton();
        }

        function activarBoton() {
            // Obtiene una referencia al botón
            var boton = document.getElementById('<%= btnProductos.ClientID %>');

            // Simula el clic en el botón
            if (boton) {
                boton.click();
            }
        }

    </script>





</asp:Content>

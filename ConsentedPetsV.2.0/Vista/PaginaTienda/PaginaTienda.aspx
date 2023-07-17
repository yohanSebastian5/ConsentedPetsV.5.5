<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaTienda.aspx.cs" Inherits="PaginaTienda.PaginaTienda.PaginaTienda" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>Consented Pets</title>
    <!--
    
TemplateMo 558 Klassy Cafe

https://templatemo.com/tm-558-klassy-cafe

-->
    <!-- Additional CSS Files -->
    <link href="../../Styles/sweetalert.css" rel="stylesheet" />
    <script src="../../Scripts/sweetalert.min.js"></script>
    <script src="../../Scripts/sweetalert-dev.js"></script>
    <script src="assets/js/carritodeCompras.js"></script>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/templatemo-klassy-cafe.css">

    <link rel="stylesheet" href="assets/css/owl-carousel.css">

    <link rel="stylesheet" href="assets/css/lightbox.css">
</head>

<body>
    <form runat="server">



        <!-- ***** Preloader Start ***** -->
        <div id="preloader">
            <div class="jumper">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
        <!-- ***** Preloader End ***** -->


        <!-- ***** Header Area Start ***** -->
        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- ***** Logo Start ***** -->
                            <a href="index.html" class="logo">
                                <asp:Image ID="Imag" runat="server" Style="width: 70px; height=70px;" />
                                <h4 id="nombre1" runat="server" style="color: black; font-size: 14px;"><%# Eval("nombre") %></h4>
                            </a>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li class="scroll-to-section"><a href="../PetShop.aspx" class="active">Home</a></li>



                                <li class="scroll-to-section"><a href="#menu">Mascotas</a></li>

                                <!-- <li class=""><a rel="sponsored" href="https://templatemo.com" target="_blank">External URL</a></li> -->
                                <li class="scroll-to-section"><a href="#reservation">Pedido</a></li>
                                <li class="scroll-to-section"><a href="#offers">Productos</a></li>
                            </ul>
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ***** Header Area End ***** -->

        <!-- ***** Main Banner Area Start ***** -->
        <div id="top">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="left-content">
                            <div class="inner-content">
                                <h4 id="nombre" runat="server"><%# Eval("nombre") %></h4>
                                <h6>ENCUENTRA TODO LO QUE BUSCAS PARA CONSENTIR A TU MASCOTA</h6>
                                <div class="main-white-button scroll-to-section">
                                    <a href="#reservation">Pide el mejor producto para tu mascota</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="main-banner header-text">
                            <div class="Modern-Slider">
                                <!-- Item -->
                                <div class="item">
                                    <div class="img-fill">
                                        <asp:Image ID="foto" runat="server" />

                                    </div>
                                </div>
                                <!-- // Item -->
                                <%-- <!-- Item -->
                                <div class="item">
                                    <div class="img-fill">
                                        <img src="assets/images/slide-02.jpg" alt="">
                                    </div>
                                </div>
                                <!-- // Item -->
                                <!-- Item -->
                                <div class="item">
                                    <div class="img-fill">
                                        <img src="assets/images/slide-03.jpg" alt="">
                                    </div>
                                </div>
                                <!-- // Item -->--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ***** Main Banner Area End ***** -->

        <!-- ***** About Area Starts ***** -->
        <%--        <section class="section" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-xs-12">
                        <div class="left-text-content">
                            <div class="section-heading">
                                <h6>About Us</h6>
                                <h2>We Leave A Delicious Memory For You</h2>
                            </div>
                            <p>
                                Klassy Cafe is one of the best <a href="https://templatemo.com/tag/restaurant" target="_blank" rel="sponsored">restaurant HTML templates</a> with Bootstrap v4.5.2 CSS framework. You can download and feel free to use this website template layout for your restaurant business. You are allowed to use this template for commercial purposes.
                            <br>
                                <br>
                                You are NOT allowed to redistribute the template ZIP file on any template donwnload website. Please contact us for more information.
                            </p>
                            <div class="row">
                                <div class="col-4">
                                    <img src="assets/images/about-thumb-01.jpg" alt="">
                                </div>
                                <div class="col-4">
                                    <img src="assets/images/about-thumb-02.jpg" alt="">
                                </div>
                                <div class="col-4">
                                    <img src="assets/images/about-thumb-03.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-xs-12">
                        <div class="right-content">
                            <div class="thumb">
                                <a rel="nofollow" href="http://youtube.com"><i class="fa fa-play"></i></a>
                                <img src="assets/images/about-video-bg.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>--%>
        <!-- ***** About Area Ends ***** -->

        <!-- ***** Menu Area Starts ***** -->
        <section class="section" id="menu">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="section-heading">
                            <h6>Pets for sale</h6>
                            <h2>Select the pets you want to share</h2>
                        </div>
                    </div>
                </div>
            </div>
            <div class="menu-item-carousel">
                <div class="col-lg-12">
                    <div class="owl-menu-item owl-carousel">
                        <asp:Repeater runat="server" ID="repMascotaVenta">
                            <ItemTemplate>


                                <div class="item">
                                    <div class='card card1' style="background-image: url('<%# ResolveUrl("../imagenes/ImagenesMascota/") + Eval("foto") %>')">

                                        <div class="price">
                                            <h6 style="width: 100px"><%# Eval("precio") %></h6>
                                        </div>
                                        <div class='info'>
                                            <h1 class='title'><%# Eval("nombre") %></h1>
                                            <p class='description'>
                                                Raza: <%# Eval("raza") %>
                                                <br />
                                                Edad: <%# Eval("edad") %>
                                                <br />
                                                Genero: <%# Eval("genero") %>
                                            </p>
                                            <div class="main-text-button">
                                                <div class="scroll-to-section"><a href="#reservation">Agregar al carrito <i class="fa fa-angle-down"></i></a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Menu Area Ends ***** -->

        <!-- ***** Chefs Area Starts ***** -->

        <!-- ***** Chefs Area Ends ***** -->

        <!-- ***** Reservation Us Area Starts ***** -->
        <section class="section" id="reservation">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 align-self-center">
                        <div class="left-text-content">
                            <div class="section-heading">
                                <h6>Contact Us</h6>
                                <h2>Aquí tú puedes hacer un pedido</h2>
                            </div>
                            <p>Solicita el mejor producto para tu mascota.</p>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="phone">
                                        <i class="fa fa-phone"></i>
                                        <h4>Número telefonico</h4>
                                        <span><a id="telefono" runat="server"><%# Eval("telefono") %></a><br>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="message">
                                        <i class="fa fa-envelope"></i>
                                        <h4>Emails</h4>
                                        <span><a id="emails" runat="server"><%# Eval("email") %></a><br>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="contact-form">

                            <div class="row">
                                <div class="col-lg-12">
                                </div>
                                <div class="col-lg-6 col-sm-12">
                                    <fieldset>
                                        <input name="name" type="text" id="name" placeholder="Nombre del producto">
                                    </fieldset>
                                </div>
                                <div class="col-lg-6 col-sm-12">
                                    <fieldset>
                                        <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="Email">
                                    </fieldset>
                                </div>
                                <div class="col-lg-6 col-sm-12">
                                    <fieldset>
                                        <input name="phone" type="text" id="phone" placeholder="Telefono">
                                    </fieldset>
                                </div>

                                <div class="col-lg-6 col-sm-12">
                                    <fieldset>
                                        <input name="cantidad" type="text" id="cantidad" placeholder="Cantidad">
                                    </fieldset>
                                </div>


                                <div class="col-lg-12">
                                    <fieldset>
                                        <textarea name="message" rows="6" id="message" placeholder="Descripcion del producto"></textarea>
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <fieldset>
                                        <button type="submit" id="form-submit" class="main-button-icon">Hacer Pedido</button>
                                    </fieldset>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Reservation Area Ends ***** -->

     


        <!-- ***** Menu Area Starts ***** -->

        <section class="section" id="offers">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 offset-lg-4 text-center">
                                <div class="section-heading">
                                    <h6>Products</h6>
                                    <h2>The best products for your pets</h2>
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
                                                                    <a runat="server" id="idCategoria" onclick="listarVet(this)" href='#tabs-1 '><%# Eval("nombre") %>
                                                                    </a>

                                                                </li>




                                                            </ItemTemplate>
                                                        </asp:Repeater>
                                                        <asp:Button ID="btnProductos" Style="display: none" OnClick="btnProductos_Click" runat="server" Text="Button" />
                                                        <%--<input type="hidden" runat="server" id="hdnCategoriaSeleccionada" />--%>
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

                                                                        <img style="width: 65px; height: 70px;" id="img" runat="server" src='<%# ResolveUrl("~/Vista/imagenes/ImagenesProductoCat/") + Eval("foto") %>' />
                                                                        <h4 ><asp:Label id="nombre" runat="server" Text='<%# Eval("nombre") %>'></asp:Label></h4>
                                                                        <p>
                                                                            <asp:Label ID="descripcion" runat="server" Text='<%# Eval("descripcion") %>'></asp:Label></p>
                                                                        <div class="price">
                                                                            <h6>$<asp:Label ID="precioP" runat="server" Text='<%# Eval("precioP") %>'> <a>Comprar</a></asp:Label>
                                                                            </h6>
                                                                            <a class="add-to-cart-btn" onclick="listar(this)">Comprar </a>

                                                                            <asp:Button ID="agregarAlCarrito" runat="server" CssClass="add-to-cart-btn ocultar" Text="Agregar al carrito" OnClick="agregarAlCarrito_Click" />
                                                                        </div>
                                                                        <asp:Label ID="idProducto" runat="server" Text='<%# Eval("idProducto")  %>' Visible="false"></asp:Label></h5>
                                                                        <h2 class="ocultar"><%# Eval("idProducto")  %></h2>



                                                                            

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


           <button id="btnAbrirModal" class="cart-button" type="button" data-toggle="modal" data-target="#myModal">
            Abrir Carrito de Compras<span id="count" class="badge text-bg-danger"></span>
        </button>
        <!-- Ventana modal -->

        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-dark text-light">
                        <h4 class="modal-title" id="myModalLabel">Carrito de Compras</h4>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div id="carritoProductos">
                            <!-- Aquí se mostrarán los datos del carrito de compras -->

                        </div>
                        <div class="modal-footer">
                            <button id="btnVaciarCarrito" type="button" class="btn btn-warning" data-dismiss="modal" onclick="vaciarCarrito()">Vaciar Carrito</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <button type="button" class="btn btn-primary">Comprar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <!-- ***** Footer Start ***** -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-xs-12">
                        <div class="right-text-content">
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="logo">
                            <a href="index.html">
                                <asp:Image ID="Image2" runat="server" Style="width: 70px; height:70px;" /></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-xs-12">
                        <div class="left-text-content">
                            <p id="ema" runat="server">
                                @ <%# Eval("email") %>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>


    </form>
    <!-- jQuery -->
    <script src="assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="assets/js/popper.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/accordions.js"></script>
    <script src="assets/js/datepicker.js"></script>
    <script src="assets/js/scrollreveal.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/imgfix.min.js"></script>
    <script src="assets/js/slick.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/isotope.js"></script>

    <!-- Global Init -->
    <script src="assets/js/custom.js"></script>
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
        function listar(elementoA) {
            var valor = elementoA.previousElementSibling.innerText;
            $.ajax({
                type: "POST",
                url: "PaginaTienda.aspx/Listar",
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
            console.log("bvb");
            var boton = document.getElementById('<%= agregarAlCarrito.ClientID %>');

            // Simula el clic en el botón
            if (boton) {
                boton.click();
            }
        }

    </script>

    <%-- <script type="text/javascript">
        function SeleccionarCategoria(idCategoria) {
            document.getElementById('<%= hdnCategoriaSeleccionada.ClientID %>').value = idCategoria;
        }
    </script>--%>

    <script>
        function listarVet(elementoA) {
            var valor = elementoA.previousElementSibling.innerText;;
            $.ajax({
                type: "POST",
                url: "PaginaTienda.aspx/ListarV",
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
    <script src="assets/js/carritodeCompras.js"></script>

</body>
</html>

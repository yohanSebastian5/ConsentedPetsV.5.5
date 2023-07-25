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
    
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
   
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/templatemo-klassy-cafe.css">
   
    <link rel="stylesheet" href="assets/css/owl-carousel.css">
    <link href="../PaginaVeterinaria/carrusel/assets/owl.carousel.min.css" rel="stylesheet" />
    <script src="../PaginaVeterinaria/carrusel/owl.carousel.min.js"></script>
    <link href="../PaginaVeterinaria/css/stiloProcesos.css" rel="stylesheet" />
    <link href="../PaginaVeterinaria/css/style.css" rel="stylesheet" />
    <script src="../PaginaVeterinaria/easing/easing.min.js"></script>
    <script src="../PaginaVeterinaria/isotope/isotope.pkgd.min.js"></script>
    <script src="../PaginaVeterinaria/js/main.js"></script>
    <link href="../PaginaVeterinaria/lightbox/css/lightbox.min.css" rel="stylesheet" />
    <script src="../PaginaVeterinaria/lightbox/js/lightbox.min.js"></script>
    <script src="../PaginaVeterinaria/mail/contact.js"></script>
    <script src="../PaginaVeterinaria/mail/jqBootstrapValidation.min.js"></script>
    <script src="../PaginaVeterinaria/waypoints/waypoints.min.js"></script>
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
                                <li class="scroll-to-section"><a href="#comentarios">Comentarios</a></li>
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
                                                <%--<div class=""><a href="#reservation">Comprar <i class="fa fa-angle-down"></i></a></div>--%>
                                                <asp:Button runat="server" ID="Button1" CssClass="btnAgregarCarrito scroll-to-section main-button-icon" Text="Agregar al carrito"
                                                    OnClientClick='<%# "agregarAlCarrito(\"" + Eval("foto") + "\", \"" + Eval("nombre") + "\", \"" + Eval("precio") + "\", \"mascota\"); return false;" %>' />
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
                                        <h4 style="width: 200px">Número telefonico</h4>
                                        <span><a id="telefono" runat="server"><%# Eval("telefono") %></a><br>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="message">
                                        <i class="fa fa-envelope"></i>
                                        <h4 style="width: 200px">Emails</h4>
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

        <!-- Testimonial Start -->
        <div class="container-fluid py-5" id="comentarios" runat="server">
            <div class="container py-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h1 class="section-title position-relative text-center mb-5">Comentarios de Nuestros Clientes</h1>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="owl-carousel testimonial-carousel">

                            <asp:Repeater ID="repCo" runat="server">
                                <ItemTemplate>
                                    <div class="text-center">
                                        <i class="fa fa-3x fa-quote-left text-primary mb-4"></i>
                                        <h4 class="font-weight-light mb-4"><%# Eval("Comentario") %></h4>
                                        <img class="img-fluid mx-auto mb-3" src='<%# ResolveUrl("../imagenes/ImagenesUsuarios/") + Eval("foto") %>' alt="">
                                        <h5 class="font-weight-bold m-0"><%# Eval("nombre") %></h5>
                                        <span>Profession</span>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->


        <%--modal--%>

        <button class="btn btn-primary" id="abrirModal">Haz un Comentario</button>


        <div id="miModal" class="modal">
            <div class="modal-contenido">
                <span class="cerrar">&times;</span>
                <h2>Deja un comentario</h2>
                <textarea id="comentario" rows="4" cols="50" runat="server" style="width: 357px;"></textarea>

                <div class="calificacion">
                    <p>Calificación:</p>
                    <div class="estrellas" id="estrella" runat="server">
                        <span class="estrella" data-valor="1">&#9734;</span>
                        <span class="estrella" data-valor="2">&#9734;</span>
                        <span class="estrella" data-valor="3">&#9734;</span>
                        <span class="estrella" data-valor="4">&#9734;</span>
                        <span class="estrella" data-valor="5">&#9734;</span>

                    </div>



                </div>

                <input type="hidden" id="valorEstrellaHidden" name="valorEstrellaHidden" runat="server" />

                <asp:Button ID="btnEnviarComentario" runat="server" CssClass="btn btn-primary" Text="Enviar comentario" OnClick="btnEnviarComentario_Click" />


            </div>
        </div>



        <!-- Botón para mostrar el carrito -->
        <button class="main-button-icon" type="button" onclick="mostrarCarrito()">Mostrar Carrito</button>


        <!-- Ventana modal del carrito -->
        <div id="carritoModal" class="modal1">
            <div class="modal-content">
                <span class="close" onclick="cerrarCarritoModal()">&times;</span>
                <h2>Carrito de compras</h2>
                <div class="carrito-container"></div>
                <div class="carrito-total">
                    <h3>Total de productos: <span id="totalProductos"></span></h3>
                    <h3>Total a pagar: <span id="totalPagar"></span></h3>
                </div>
            </div>
        </div>


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
                                                                        <h4 id="nombre" runat="server"><%# Eval("nombre") %></h4>
                                                                        <p id="descripcion" runat="server"><%# Eval("descripcion") %></p>
                                                                        <div class="price">
                                                                            <h6 id="precioP" runat="server">$<%# Eval("precioP") %>

                                                                                <asp:Button runat="server" ID="Button2" CssClass="btnAgregarCarrito main-button-icon"
                                                                                    Style="background-color: #fb5849; height: 70px; border: yellowgreen; color: white;" Text="Agregar al carrito"
                                                                                    OnClientClick='<%# "agregarAlCarrito(\"" + Eval("foto") + "\", \"" + Eval("nombre") + "\", \"" + Eval("precioP") + "\", \"producto\"); return false;" %>' />

                                                                            </h6>
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


        <!-- Ventana modal -->


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
                                <asp:Image ID="Image2" runat="server" Style="width: 70px; height: 70px;" /></a>
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
    <script>
        document.getElementById("abrirModal").addEventListener("click", function (event) {
            event.preventDefault();
            document.getElementById("miModal").style.display = "block";
            marcarEstrellas(0); // Marcar las estrellas como vacías al abrir la modal
        });

        document.getElementsByClassName("cerrar")[0].addEventListener("click", function (event) {
            event.preventDefault();
            document.getElementById("miModal").style.display = "none";
        });


        var estrellas = document.getElementsByClassName("estrella");
        for (var i = 0; i < estrellas.length; i++) {
            estrellas[i].addEventListener("click", function (event) {
                event.preventDefault();
                var valorEstrella = parseInt(this.getAttribute("data-valor")); // Almacenar el valor en la variable global

                marcarEstrellas(valorEstrella);
                document.getElementById("valorEstrellaHidden").value = valorEstrella;
                // Enviar el valor al servidor utilizando AJAX
                $.ajax({
                    url: 'PaginaTienda.aspx/btnEnviarComentario_Click',
                    type: 'POST',
                    data: { valor: valorEstrella },
                    success: function (response) {
                        // Manejar la respuesta del servidor si es necesario
                        console.log(response);
                    },
                    error: function (xhr, status, error) {
                        // Manejar el error si ocurre
                        console.log(error);
                    }
                });
            });
        }


        function marcarEstrellas(valor) {
            for (var i = 0; i < estrellas.length; i++) {
                if (i < valor) {
                    estrellas[i].innerHTML = "&#9733;"; // Símbolo de estrella rellena
                    estrellas[i].classList.add("seleccionada");
                } else {
                    estrellas[i].innerHTML = "&#9734;"; // Símbolo de estrella vacía
                    estrellas[i].classList.remove("seleccionada");
                }
            }
        }




    </script>
    <script>
        // Función para agregar un producto al carrito
        function agregarAlCarrito(foto, nombre, precio, tipo) {
            var carrito = JSON.parse(localStorage.getItem('carrito')) || [];

            // Verificar si el producto o mascota ya está en el carrito
            var item = carrito.find(item => item.Nombre === nombre && item.Tipo === tipo);

            if (item) {
                item.Cantidad++;
            } else {
                carrito.push({
                    Foto: foto,
                    Cantidad: 1,
                    Nombre: nombre,
                    Precio: parseFloat(precio),
                    Tipo: tipo
                });
            }

            localStorage.setItem('carrito', JSON.stringify(carrito));
        }


        // Función para eliminar un producto del carrito
        function eliminarDelCarrito(nombre) {
            var carrito = JSON.parse(localStorage.getItem('carrito')) || [];

            // Eliminar el producto del carrito
            var index = carrito.findIndex(item => item.Nombre === nombre);
            if (index !== -1) {
                carrito.splice(index, 1);
            }

            localStorage.setItem('carrito', JSON.stringify(carrito));
            mostrarCarrito();
        }

        // Función para mostrar el contenido del carrito en la ventana modal
        function mostrarCarrito() {
            var carrito = JSON.parse(localStorage.getItem('carrito')) || [];
            var carritoContainer = document.querySelector('.carrito-container');
            var totalProductos = document.getElementById('totalProductos');
            var totalPagar = document.getElementById('totalPagar');
            var carritoModal = document.getElementById('carritoModal');

            if (carrito.length > 0) {
                // Construir el contenido del carrito
                var carritoHTML = '<ul>';
                var totalProductosCount = 0;
                var totalPagarAmount = 0;

                for (var i = 0; i < carrito.length; i++) {
                    carritoHTML += '<li>' + carrito[i].Foto + ' - ' + carrito[i].Nombre + ' - Cantidad: ' + carrito[i].Cantidad + ' - $' + (carrito[i].Cantidad * carrito[i].Precio).toFixed(2) + ' <button onclick="eliminarDelCarrito(\'' + carrito[i].Nombre + '\')">Eliminar</button></li>';
                    totalProductosCount += carrito[i].Cantidad;
                    totalPagarAmount += carrito[i].Cantidad * carrito[i].Precio;
                }
                carritoHTML += '</ul>';

                carritoContainer.innerHTML = carritoHTML;
                totalProductos.textContent = totalProductosCount;
                totalPagar.textContent = totalPagarAmount.toFixed(2);

                // Mostrar la ventana modal del carrito
                carritoModal.style.display = 'block';
            } else {
                // Si el carrito está vacío, mostrar un mensaje
                carritoContainer.innerHTML = '<p>El carrito está vacío.</p>';
                totalProductos.textContent = '0';
                totalPagar.textContent = '0.00';

                // Mostrar la ventana modal del carrito
                carritoModal.style.display = 'block';
            }
        }

        // Función para cerrar la ventana modal del carrito
        function cerrarCarritoModal() {
            var carritoModal = document.getElementById('carritoModal');
            carritoModal.style.display = 'none';
        }
    </script>



    <script src="assets/js/carritodeCompras.js"></script>

</body>
</html>

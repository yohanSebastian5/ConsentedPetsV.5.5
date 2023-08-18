<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaEscuela.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PaginaEscuela.PaginaEscuela" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Consented Pets</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../../Styles/sweetalert.css" rel="stylesheet" />
    <script src="../../Scripts/sweetalert-dev.js"></script>
    <script src="../../Scripts/sweetalert.min.js"></script>
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <script src="js/valoracion.js"></script>
    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <form runat="server">
        <!-- Topbar Start -->
        <div class="container-fluid d-none d-lg-block">
            <div class="row align-items-center py-4 px-xl-5">
                <div class="col-lg-3">
                    <a href="" class="text-decoration-none">
                        <h1 class="m-0"><span class="text-primary">E</span>SCUELA</h1>
                    </a>
                </div>
                <div class="col-lg-3 text-right">
                    <div class="d-inline-flex align-items-center">
                        <i class="fa fa-2x fa-map-marker-alt text-primary mr-3"></i>
                        <div class="text-left">
                            <h6 class="font-weight-semi-bold mb-1">Ubicación</h6>
                            <small id="direc" runat="server"><%# Eval("direccion") %></small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 text-right">
                    <div class="d-inline-flex align-items-center">
                        <i class="fa fa-2x fa-envelope text-primary mr-3"></i>
                        <div class="text-left">
                            <h6 class="font-weight-semi-bold mb-1">Email</h6>
                            <small id="emaile" runat="server"><%# Eval("email") %></small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 text-right">
                    <div class="d-inline-flex align-items-center">
                        <i class="fa fa-2x fa-phone text-primary mr-3"></i>
                        <div class="text-left">
                            <h6 class="font-weight-semi-bold mb-1">Teléfono</h6>
                            <small id="tele" runat="server"><%# Eval("telefono") %></small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Topbar End -->


        <!-- Navbar Start -->
        <div class="container-fluid">
            <div class="row border-top px-xl-5">

                <div class="col-lg-9">
                    <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">

                        <a href="" class="text-decoration-none d-block d-lg-none">
                            <h1 class="m-0"><span class="text-primary">E</span>SCUELA</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav py-0">
                                <a href="../Escuela.aspx" class="nav-item nav-link active">Volver</a>
                                <a href="#About" class="nav-item nav-link">Nosotros</a>
                                <a href="#Services" class="nav-item nav-link">Servicios</a>
                                <a href="#Courses" class="nav-item nav-link">Cursos</a>
                                <a href="#Teachers" class="nav-item nav-link">Profesores</a>
                                <a href="#Testimonial" class="nav-item nav-link">Comentarios</a>
                            </div>
                            <a class="btn btn-primary py-2 px-4 ml-auto d-none d-lg-block" href="#Register">Registra a tu mascota</a>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar End -->

        <!-- Carousel Start -->
        <div class="container-fluid p-0 pb-5 mb-5">
            <div id="header-carousel" class="carousel slide carousel-fade" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#header-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#header-carousel" data-slide-to="1"></li>

                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active" style="min-height: 300px;">
                        <asp:Image ID="idImagEstab" runat="server" class="position-relative w-100" Style="min-height: 300px; object-fit: cover;" />

                        <div class="carousel-caption d-flex align-items-center justify-content-center">
                            <div class="p-5" style="width: 100%; max-width: 900px;">
                                <h5 class="text-white text-uppercase mb-md-3">Los mejores cursos</h5>
                                <h1 class="display-3 text-white mb-md-4" id="nom" runat="server"></h1>
                                <a href="#Register" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">Más</a>
                            </div>
                        </div>
                    </div>
                    <%--<div class="carousel-item" style="min-height: 300px;">
                        <img class="position-relative w-100" src="../imagenes/ServicioCursosE/carousel-2.jpg" style="min-height: 300px; object-fit: cover;">
                        <div class="carousel-caption d-flex align-items-center justify-content-center">
                            <div class="p-5" style="width: 100%; max-width: 900px;">
                                <h5 class="text-white text-uppercase mb-md-3">Best Online Courses</h5>
                                <h1 class="display-3 text-white mb-md-4">Best Online Learning Platform</h1>
                                <a href="#Register" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">Learn More</a>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
        <!-- Carousel End -->

        <!-- About Start -->
        <div id="About" class="container-fluid py-5">
            <div class="container py-5">
                <div class="row align-items-center">

                    <div class="col-lg-5">
                        <asp:Image ID="foto" runat="server" class="img-fluid rounded mb-4 mb-lg-0" />

                    </div>
                    <div class="col-lg-7">
                        <div class="text-left mb-4">
                            <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Acerca de nosotros</h5>
                            <h1 id="nombre" runat="server"></h1>
                        </div>
                        <p>HAZ QUE TU MASCOTA TENGA UNA TRANSFORMACIÓN EN SU FORMA DE SER RECIBIENDO EL MEJOR ADIESTRAMIENTO CANINO</p>
                        <a href="" class="btn btn-primary py-md-2 px-md-4 font-weight-semi-bold mt-2">Más</a>
                    </div>


                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Category Start -->
        <div id="Services" class="container-fluid py-5">

            <div class="container pt-5 pb-3">

                <div class="text-center mb-5">
                    <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Servicios</h5>
                    <h1>Explrora nuestros Servicios</h1>
                </div>

                <div class="d-flex">
                    <asp:Repeater ID="repServicio" runat="server">
                        <ItemTemplate>
                            <div class="cat-item mx-3 position-relative overflow-hidden rounded mb-2" style="height: 160px; width: 270px">
                                <img class="img-fluid" src='<%# ResolveUrl("../imagenes/ServicioCursosE/") + Eval("foto") %>' alt="">
                                <a class="cat-overlay text-white text-decoration-none">
                                    <h4 class="text-white font-weight-medium"><%# Eval("nombre") %></h4>
                                    <span>100 Courses</span>
                                </a>
                            </div>


                        </ItemTemplate>
                    </asp:Repeater>
                </div>

            </div>

        </div>
        <!-- Category Start -->




        <!-- Courses Start -->
        <div id="Courses" class="container-fluid py-5">
            <div class="container py-5">
                <div class="text-center mb-5">
                    <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Cursos</h5>
                    <h1>Nuestros Cursos</h1>
                </div>
                <div class="row">
                    <asp:Repeater ID="repCurso" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-6 mb-4">
                                <div class="rounded overflow-hidden mb-2">
                                    <img class="img-fluid" src='<%# ResolveUrl("../imagenes/ServicioCursosE/") + Eval("foto") %>' alt="" style="height: 200px; width: 100%">
                                    <div class="bg-secondary p-4">
                                        <div class="d-flex justify-content-between mb-3">
                                            <small class="m-0"><i class="fa fa-users text-primary mr-2"></i>25 Students</small>
                                            <small class="m-0"><i class="far fa-clock text-primary mr-2"></i>01h 30m</small>
                                        </div>
                                        <a class="h5" href=""><%# Eval("nombre") %></a>
                                        <div class="border-top mt-4 pt-4">
                                            <div class="d-flex justify-content-between">
                                                <h6 class="m-0"><i class="fa fa-star text-primary mr-2"></i>4.5 <small>(250)</small></h6>
                                                <h5 class="m-0">$<%# Eval("precio") %></h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

            </div>
        </div>
        <!-- Courses End -->





        <!-- Team Start -->
        <div id="Teachers" class="container-fluid py-5">
            <div class="container pt-5 pb-3">
                <div class="text-center mb-5">
                    <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Profesores</h5>
                    <h1>Nuestros Profesores</h1>
                </div>
                <div class="row">
                    <asp:Repeater ID="repTeacher" runat="server">
                        <ItemTemplate>
                            <div class="col-md-6 col-lg-3 text-center team mb-4">
                                <div class="team-item rounded overflow-hidden mb-2">
                                    <div class="team-img position-relative">
                                        <img class="img-fluid" src='<%# ResolveUrl("../imagenes/ImagenesUsuarios/") + Eval("foto") %>'>
                                       
                                    </div>
                                    <div class="bg-secondary p-4">
                                        <h5><%# Eval("nombre") %></h5>
                                        <p class="m-0"><%# Eval("especializacion") %></p>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>
        </div>
        <!-- Team End -->


        <!-- Testimonial Start -->
        <div class="container-fluid py-5" id="Testimonial">
            <div class="container py-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h1 class="section-title position-relative text-center mb-5">Comentarios de Nuestros Clientes</h1>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="owl-carousel testimonial-carousel">

                            <asp:Repeater ID="repComentario" runat="server">
                                <ItemTemplate>
                                    <div class="text-center">
                                        <i class="fa fa-3x fa-quote-left text-primary mb-4"></i>
                                        <h4 class="font-weight-light mb-4"><%# Eval("Comentario") %></h4>
                                        <img class="img-fluid mx-auto mb-3" src='<%# ResolveUrl("../imagenes/ImagenesUsuarios/") + Eval("foto") %>' alt="">
                                        <h5 class="font-weight-bold m-0"><%# Eval("nombre") %></h5>
                                        <span>Cliente</span>
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

        <button class="btn btn-primary" id="abrirModal" style="display: block; margin: 0 auto;">Haz un Comentario</button>


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


        <!-- Registration Start -->

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div id="Register" class="container-fluid bg-registration py-5" style="margin: 90px 0;">
                    <div class="container py-5">
                        <div class="row align-items-center">

                            <div class="col-lg-5">
                                <div class="card border-0">
                                    <div class="card-header bg-light text-center p-4">
                                        <h1 class="m-0">Registrar </h1>
                                    </div>

                                    <div class="card-body rounded-bottom bg-primary p-5">

                                        <div class="form-group">
                                            <asp:DropDownList ID="ddlMascota" CssClass="custom-select border-0 px-4" runat="server" Style="height: 47px;"></asp:DropDownList>
                                        </div>

                                        <div class="form-group">
                                            <asp:DropDownList ID="ddlServicio" CssClass="custom-select border-0 px-4" runat="server" Style="height: 47px;" AutoPostBack="true" OnSelectedIndexChanged="ddlServicio_SelectedIndexChanged"></asp:DropDownList>
                                        </div>

                                        <div class="form-group">
                                            <asp:DropDownList ID="ddlCurso" CssClass="custom-select border-0 px-4" runat="server" Style="height: 47px;" AutoPostBack="true" OnSelectedIndexChanged="ddlCurso_SelectedIndexChanged"></asp:DropDownList>
                                        </div>

                                        <div>
                                            <asp:Button CssClass="btn btn-dark btn-block border-0 py-3" runat="server" ID="btnM" Text="Matricular" OnClick="btnM_Click" />


                                        </div>

                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-7 mb-5 mb-lg-0">
                                <div class="mb-4">
                                    <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 5px;">Necesitas algún curso</h5>
                                    <h1 class="text-white" id="idMostrarNombre" runat="server"></h1>
                                </div>
                                <p class="text-white" id="idMostrarDescripcion" runat="server">
                                </p>
                                <ul class="list-inline text-white m-0">

                                    <lu>Valor del curso: $</lu><lu class="py-2" id="precio" runat="server"></lu>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>

        <!-- Registration End -->



      


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>
    </form>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>

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
                    url: 'PaginaEscuela.aspx/btnEnviarComentario_Click',
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
</body>

</html>

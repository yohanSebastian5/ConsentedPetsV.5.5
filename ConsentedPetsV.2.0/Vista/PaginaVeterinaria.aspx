<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaVeterinaria.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PaginaVeterinaria" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>iCREAM - Ice Cream Shop Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Brygada+1918:ital,wght@0,400;0,600;0,700;1,400&family=Inter:wght@400;700&display=swap" rel="stylesheet">


    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="PaginaVeterinaria/carrusel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="PaginaVeterinaria/lightbox/css/lightbox.min.css" rel="stylesheet" />
    <link href="PaginaVeterinaria/css/stiloProcesos.css" rel="stylesheet" />
    <!-- Customized Bootstrap Stylesheet -->
    <link href="PaginaVeterinaria/css/style.css" rel="stylesheet" />

</head>

<body>
    <form id="form1" runat="server">
        <!-- Topbar Start -->
        <div class="container-fluid bg-primary py-3 d-none d-md-block">
            <div class="container">
                <div class="row">
                </div>
            </div>
        </div>
        <!-- Topbar End -->


        <!-- Navbar Start -->
        <div class="container-fluid position-relative nav-bar p-0">
            <div class="container-lg position-relative p-0 px-lg-3" style="z-index: 9;">
                <nav class="navbar navbar-expand-lg bg-white navbar-light shadow p-lg-0">
                    <a href="index.html" class="navbar-brand d-block d-lg-none">
                        <h1 class="m-0 display-4 text-primary"><span class="text-secondary">V</span>ETERINARIA</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav ml-auto py-0">
                            <a href="ClinicaVeterinaria.aspx" class="nav-item nav-link active">Home</a>
                            <a href="#servicios" class="nav-item nav-link">Servicios</a>
                            <a href="#procesos" class="nav-item nav-link">Procesos</a>
                        </div>
                        <a href="index.html" class="navbar-brand mx-5 d-none d-lg-block">
                            <h1 class="m-0 display-4 text-primary"><span class="text-secondary">V</span>ETERINARIA</h1>
                        </a>
                        <div class="navbar-nav mr-auto py-0">
                            <a href="#veterinarios" class="nav-item nav-link">Veterinarios</a>
                            <a href="#comentarios" class="nav-item nav-link">Comentarios</a>
                            <a href="#citas" class="nav-item nav-link">Citas</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->


        <!-- Carousel Start -->
        <div class="container-fluid p-0 mb-5 pb-5">

            <div id="header-carousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="container-fluid p-0 pb-5 mb-5">
                        <div class="carousel-item active" style="min-height: 300px;">
                            <asp:Image ID="idImagEstab" runat="server" class="position-relative w-100" Style="min-height: 300px; object-fit: cover;" />
                            <div class="carousel-caption d-flex align-items-center justify-content-center">
                                <div class="p-5" style="width: 100%; max-width: 900px;">
                                   
                                    <h1 class="display-3 text-white mb-md-4" id="nom" runat="server"></h1>
                                    
                                     <h5 class="text-white text-uppercase mb-md-3">AGENDA PARA QUE TU MASCOTA RECIBA LA MEJOR ATENCIÓN Y CUIDADO PARA SU BIENESTAR</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Carousel End -->







        <!-- Services Start -->
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
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Services End -->

        <div class="container" id="procesos">
            <div class="row">
                <div class="col-lg-6">
                    <h1 class="section-title position-relative mb-5">Procesos</h1>
                </div>
                <div class="col-lg-6 mb-5 mb-lg-0 pb-5 pb-lg-0"></div>
            </div>

            <div class="" style="padding: 0px">
                <div class="" style="padding: 0px">
                    <div class="container-fluid p-0 mb-5 ">

                        <asp:Repeater ID="repProcesos" runat="server">
                            <ItemTemplate>
                                <div class="row align-items-center justify-content-between" style="padding: 0px">
                                    <div class="col-lg-6 order-lg-2 mb-5 mb-lg-0">
                                        <div class="image-stack mb-5 mb-lg-0">
                                            <div class="image-stack__item image-stack__item--top" data-aos="fade-up" data-aos-delay="100" data-rellax-percentage="0.5">
                                                <img src='<%# ResolveUrl("~/Vista/imagenes/imagenesProcesosV/") + Eval("foto") %>' alt="Image" class="img-fluid">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 order-lg-1">
                                        <div>
                                            <h2 class="heading mb-3" data-aos="fade-up" data-aos-delay="100"><%#Eval("nombre")%></h2>
                                            <p data-aos="fade-up" data-aos-delay="200"><%#Eval("descripcion")%></p>

                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

            </div>
        </div>


        <!-- Products End -->


        <!-- Team Start -->
        <div class="container-fluid py-5" id="veterinarios">
            <div class="container py-5">
                <div class="row">
                    <div class="col-lg-6">
                        <h1 class="section-title position-relative mb-5">Cuidar la Salud de tu Mascota es un Placer</h1>
                    </div>
                    <div class="col-lg-6 mb-5 mb-lg-0 pb-5 pb-lg-0"></div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="owl-carousel team-carousel">
                            <asp:Repeater ID="repVete" runat="server">
                                <ItemTemplate>
                                    <div class="team-item">
                                        <div class="team-img mx-auto">
                                            <img class="rounded-circle w-100 h-100" src='<%# ResolveUrl("~/Vista/imagenes/ImagenesUsuarios/") + Eval("foto") %>' style="object-fit: cover;">
                                        </div>
                                        <div class="position-relative text-center bg-light rounded px-4 py-5" style="margin-top: -100px;">
                                            <h3 class="font-weight-bold mt-5 mb-3 pt-5"><%#Eval("nombre") %></h3>
                                            <h6 class="text-uppercase text-muted mb-4">
                                                <label>Especialización: </label>
                                                <%#Eval("especializacion")%></h6>
                                            <h6 class="text-uppercase text-muted mb-4">
                                                <label>Experiencia: </label>
                                                <%#Eval("experiencia")%></h6>
                                            <h6 class="text-uppercase text-muted mb-4">
                                                <label>Teléfono: </label>
                                                <%#Eval("telefono")%></h6>

                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->


        <!-- Testimonial Start -->
        <div class="container-fluid py-5" id="comentarios">
            <div class="container py-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h1 class="section-title position-relative text-center mb-5">Clients Say About Our Famous Ice Cream</h1>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="owl-carousel testimonial-carousel">
                            <div class="text-center">
                                <i class="fa fa-3x fa-quote-left text-primary mb-4"></i>
                                <h4 class="font-weight-light mb-4">Dolor eirmod diam stet kasd sed. Aliqu rebum est eos. Rebum elitr dolore et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</h4>
                                <img class="img-fluid mx-auto mb-3" src="PaginaVeterinaria/img/testimonial-1.jpg" alt="">
                                <h5 class="font-weight-bold m-0">Client Name</h5>
                                <span>Profession</span>
                            </div>
                            <div class="text-center">
                                <i class="fa fa-3x fa-quote-left text-primary mb-4"></i>
                                <h4 class="font-weight-light mb-4">Dolor eirmod diam stet kasd sed. Aliqu rebum est eos. Rebum elitr dolore et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</h4>
                                <img class="img-fluid mx-auto mb-3" src="PaginaVeterinaria/img/testimonial-2.jpg" alt="">
                                <h5 class="font-weight-bold m-0">Client Name</h5>
                                <span>Profession</span>
                            </div>
                            <div class="text-center">
                                <i class="fa fa-3x fa-quote-left text-primary mb-4"></i>
                                <h4 class="font-weight-light mb-4">Dolor eirmod diam stet kasd sed. Aliqu rebum est eos. Rebum elitr dolore et eos labore, stet justo sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</h4>
                                <img class="img-fluid mx-auto mb-3" src="PaginaVeterinaria/img/testimonial-3.jpg" alt="">
                                <h5 class="font-weight-bold m-0">Client Name</h5>
                                <span>Profession</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->





        <!--hast aqui va el ajax-->
        --%>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container-fluid py-5" id="citas">
                    <div class="container py-5">
                        <div class="row">
                            <div class="col-lg-6">
                                <h1 class="section-title position-relative mb-5">Agendamiento de Citas para Mascotas</h1>
                            </div>
                            <div class="col-lg-6 mb-5 mb-lg-0 pb-5 pb-lg-0"></div>
                        </div>
                        <div class="container">

                            <div class="mb-3">
                                <label for="mascota">Nombre de la Mascota</label>
                                <asp:DropDownList ID="ddlMascota" CssClass="cajas" runat="server"></asp:DropDownList>

                            </div>
                            <div class="mb-3">
                                <label for="servicio">Servicio Requerido</label>
                                <asp:DropDownList ID="ddlServicio" CssClass="cajas" runat="server"></asp:DropDownList>

                            </div>

                            <div class="mb-3">
                                <label for="fechaCita">Fecha de la Cita</label>
                                <div class="calendar-container">
                                    <asp:Calendar ID="calendarFecha" runat="server" OnSelectionChanged="calendarFecha_SelectionChanged"></asp:Calendar>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="fechaSeleccionada">Fecha Seleccionada:</label>
                                <asp:TextBox ID="txtFecha" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>

                            <div class="mb-3">
                                <label for="hora">Hora de la Cita</label>
                                <asp:DropDownList ID="ddlHora" CssClass="form-select" runat="server">
                                    <asp:ListItem Value="08:00 am">08:00 am</asp:ListItem>
                                    <asp:ListItem Value="08:30 am">08:30 am</asp:ListItem>
                                    <asp:ListItem Value="09:00 am">09:00 am</asp:ListItem>
                                    <asp:ListItem Value="09:30 am">09:30 am</asp:ListItem>
                                    <asp:ListItem Value="10:00 am">10:00 am</asp:ListItem>
                                    <asp:ListItem Value="10:30 am">10:30 am</asp:ListItem>
                                    <asp:ListItem Value="11:00 am">11:00 am</asp:ListItem>
                                    <asp:ListItem Value="11:30 am">11:30 am</asp:ListItem>
                                    <asp:ListItem Value="12:00 am">12:00 am</asp:ListItem>
                                    <asp:ListItem Value="12:30 am">12:30 am</asp:ListItem>
                                    <asp:ListItem Value="13:00 pm">13:00 pm</asp:ListItem>
                                    <asp:ListItem Value="13:30 pm">13:30 pm</asp:ListItem>
                                    <asp:ListItem Value="14:00 pm">14:00 pm</asp:ListItem>
                                    <asp:ListItem Value="14:30 pm">14:30 pm</asp:ListItem>
                                    <asp:ListItem Value="15:00 pm">15:00 pm</asp:ListItem>
                                    <asp:ListItem Value="15:30 pm">15:30 pm</asp:ListItem>
                                    <asp:ListItem Value="16:00 pm">16:00 pm</asp:ListItem>
                                    <asp:ListItem Value="16:30 pm">16:30 pm</asp:ListItem>
                                    <asp:ListItem Value="17:00 pm">17:00 pm</asp:ListItem>
                                    <asp:ListItem Value="17:30 pm">17:30 pm</asp:ListItem>
                                    <asp:ListItem Value="18:00 pm">18:00 pm</asp:ListItem>
                                    <asp:ListItem Value="18:30 pm">18:30 pm</asp:ListItem>


                                </asp:DropDownList>
                            </div>

                            <div class="mb-3">
                                <label for="estadoCita">Estado</label>
                                <asp:DropDownList ID="ddlEstado" CssClass="form-select" runat="server">
                                    <asp:ListItem Value="">Seleccione el estado</asp:ListItem>
                                    <asp:ListItem Value="pendiente">Pendiente</asp:ListItem>
                                    <asp:ListItem Value="confirmada">Confirmada</asp:ListItem>
                                    <asp:ListItem Value="cancelada">Cancelada</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <asp:Button ID="btnAgendarCita" runat="server" Text="Agendar Cita" OnClick="btnAgendarCita_Click1" />

                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>

        <!-- Footer Start -->
        <div class="container-fluid footer bg-light py-5" style="margin-top: 90px;">
            <div class="container text-center py-5">
                <div class="row">
                    <div class="col-12 mb-4">
                        <a href="index.html" class="navbar-brand m-0">
                            <h1 class="m-0 mt-n2 display-4 text-primary"><span class="text-secondary">i</span>CREAM</h1>
                        </a>
                    </div>
                    <div class="col-12 mb-4">
                        <a class="btn btn-outline-secondary btn-social mr-2" href="#"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-secondary btn-social mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-secondary btn-social mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-outline-secondary btn-social" href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                    <div class="col-12 mt-2 mb-4">
                        <div class="row">
                            <div class="col-sm-6 text-center text-sm-right border-right mb-3 mb-sm-0">
                                <h5 class="font-weight-bold mb-2">Get In Touch</h5>
                                <p class="mb-2">123 Street, New York, USA</p>
                                <p class="mb-0">+012 345 67890</p>
                            </div>
                            <div class="col-sm-6 text-center text-sm-left">
                                <h5 class="font-weight-bold mb-2">Opening Hours</h5>
                                <p class="mb-2">Mon – Sat, 8AM – 5PM</p>
                                <p class="mb-0">Sunday: Closed</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <p class="m-0">
                            &copy; <a href="#">Domain</a>. All Rights Reserved. Designed by <a href="https://htmlcodex.com">HTML Codex</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-secondary px-2 back-to-top"><i class="fa fa-angle-double-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="PaginaVeterinaria/easing/easing.min.js"></script>
        <script src="PaginaVeterinaria/waypoints/waypoints.min.js"></script>
        <script src="PaginaVeterinaria/carrusel/owl.carousel.min.js"></script>
        <script src="PaginaVeterinaria/isotope/isotope.pkgd.min.js"></script>
        <script src="PaginaVeterinaria/lightbox/js/lightbox.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="PaginaVeterinaria/mail/jqBootstrapValidation.min.js"></script>
        <script src="PaginaVeterinaria/mail/contact.js"></script>


        <!-- Template Javascript -->
        <script src="PaginaVeterinaria/js/main.js"></script>
    </form>
</body>

</html>

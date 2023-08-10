<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaPrincipal.aspx.cs" Inherits="ConsentedPetsV._2._0.PaginaPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Vista/Css/StylePrincipal.css" rel="stylesheet" />
    <link href="Vista/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <title>Concented Pets</title>
    <style>
        a {
            text-decoration: none;
        }

        img {
            vertical-align: middle;
            height: 125px;

            width: 203px;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top ">
        <div class="container-fluid">

            <div class="row justify-content-center">
                <div class="col-xl-9 d-flex align-items-center justify-content-lg-between">
                    <h1 class="logo me-auto me-lg-0"><a href="index.html">Consented Pets</a></h1>
                    <!-- Uncomment below if you prefer to use an image logo -->
                    <!-- <a href="index.html" class="logo me-auto me-lg-0"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

                    <nav id="navbar" class="navbar order-last order-lg-0">
                        <ul>
                            <li><a class="nav-link scrollto active" href="#hero">Inicio</a></li>
                            <li><a class="nav-link scrollto" href="#main">Presentacion</a></li>
                            <li><a class="nav-link scrollto " href="#portfolio">Categorias</a></li>
                        </ul>
                        <i class="bi bi-list mobile-nav-toggle"></i>
                    </nav>
                    <!-- .navbar -->

                    <a href="Principal.aspx" class="get-started-btn scrollto">NUESTROS ESTABLECIMIENTOS</a>
                </div>
            </div>

        </div>
    </header>
    <!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex flex-column justify-content-center">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-8">
                    <h1>CONSENTED PETS
                        <br />
                        ENCUENTRA LO QUE BUSCAS </h1>
                    <h2>Todo lo que busques para tu mascota lo encontraras aqui</h2>

                </div>
            </div>
        </div>
    </section>
    <!-- End Hero -->

    <main id="main">

        <!-- ======= About Us Section ======= -->
        <section id="about" class="about">
            <div class="container">
                <div class="section-title " style="display: flex; justify-content: center; align-items: center;">
                    <h2>NOSOTROS</h2>
                    <p style="padding-left: 20px">
                        En Consented Pets buscamos que cada persona encuentre en un solo lugar cada servicio o producto que necesites para tu mascota.
                       
                        proporcionar a los dueños de mascotas un lugar centralizado donde puedan acceder a una variedad de servicios y productos de calidad para sus compañeros.
                  
                        A través de nuestra plataforma, buscamos facilitar la búsqueda y contratación de servicios veterinarios, la educación y entrenamiento canino, donde queremos
                    
                        fomentar una comunidad de amantes de los animales, donde los dueños de mascotas encuentren confianza y comodidad al saber que todos los establecimientos
                        puedan ofrecer sus servicios y contribuir al cuidado y felicidad de las mascotas.
                    </p>

                    <img style="height:200px" src="Vista/imagenes/logo.png" />
                </div>
            </div>
        </section>
        <!-- End About Us Section -->



        <!-- ======= Cta Section ======= -->
        <section id="cta" class="cta">
            <div class="container">

                <div class="row">
                    <div class="col-lg-9 text-center text-lg-start">
                        <h3>Todo en un solo lugar</h3>
                        <p>Ahorra tiempo al buscar cada establecimiento que necesites para tu mascota.</p>
                    </div>
                    <div class="col-lg-3 cta-btn-container text-center">
                    </div>
                </div>

            </div>
        </section>
        <!-- End Cta Section -->


        <!-- ======= Portfolio Insumos ======= -->

        <!-- End Portfolio Section -->


        <!-- ======= Portfolio Plantas ======= -->
        <section id="portfolio" class="portfolio">
            <div class="container">

                <div class="section-title">
                    <h3>NUESTROS ESTABLECIMIENTOS</h3>
                    <h2>Categorias</h2>

                    <p>Tenemos establecimientos de calidad donde puedas encontrar los servicios y productos que busques</p>
                </div>
                <div class="row portfolio-container">

                    <div class="col-lg-4 col-md-6 portfolio-item filter-pexterior">
                        <a href="#">
                            <img src="Vista/imagenes/Veterinaria.png" alt="" />

                        </a>

                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-active">
                        <a href="#">
                            <img src="Vista/imagenes/Tienda.png" alt="" />

                        </a>

                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-pexterior">
                        <a href="#">
                            <img src="Vista/imagenes/Escuela.png" alt="" />

                        </a>
                    </div>

                </div>

            </div>
        </section>
    </main>
    <!-- End Portfolio Section -->
    <!-- ======= Contact Section ======= -->


    <!-- Vendor JS Files -->
    <script src="Vista/js/purecounter/purecounter_vanilla.js"></script>
    <script src="Vista/Bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="Vista/js/glightbox/js/glightbox.min.js"></script>
    <script src="Vista/js/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="Vista/js/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>


    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
</body>
</html>

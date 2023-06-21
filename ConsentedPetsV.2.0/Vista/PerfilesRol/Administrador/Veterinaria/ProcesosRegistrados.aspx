<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/Veterinaria/Veterinaria.Master" AutoEventWireup="true" CodeBehind="ProcesosRegistrados.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.Veterinaria.ProcesosRegistrados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <link href="../../../PaginaVeterinaria/css/stiloProcesos.css" rel="stylesheet" />
    <link href="../../../PaginaVeterinaria/css/style.css" rel="stylesheet" />
    <link href="../../../PaginaVeterinaria/lightbox/css/lightbox.min.css" rel="stylesheet" />
    <link href="../../../PaginaVeterinaria/carrusel/assets/owl.carousel.min.css" rel="stylesheet" />
    <script src="../../../PaginaVeterinaria/easing/easing.min.js"></script>
        <script src="../../../PaginaVeterinaria/waypoints/waypoints.min.js"></script>
        <script src="../../../PaginaVeterinaria/carrusel/owl.carousel.min.js"></script>
        <script src="../../../PaginaVeterinaria/isotope/isotope.pkgd.min.js"></script>
        <script src="../../../PaginaVeterinaria/lightbox/js/lightbox.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="../../../PaginaVeterinaria/mail/jqBootstrapValidation.min.js"></script>
        <script src="../../../PaginaVeterinaria/mail/contact.js"></script>
            <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>


        <!-- Template Javascript -->
        <script src="PaginaVeterinaria/js/main.js"></script>
    <div class="container-fluid py-5" id="procesos">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-6">
                    <h1 class="section-title position-relative mb-5">Procesos</h1>
                </div>
                <div class="col-lg-6 mb-5 mb-lg-0 pb-5 pb-lg-0"></div>
            </div>

            <div class="row">
                    <div class="col-12">
                   
        
                    
                      
                    
                
                        
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

</asp:Content>

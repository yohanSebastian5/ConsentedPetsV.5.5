<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/Veterinaria/Veterinaria.Master" AutoEventWireup="true" CodeBehind="ProcesosRegistrados.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.Veterinaria.ProcesosRegistrados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <link href="../../../PaginaVeterinaria/css/style.css" rel="stylesheet" />
    <link href="../../../PaginaVeterinaria/css/stiloProcesos.css" rel="stylesheet" />
    <div class="container">
        <div class="row" style="margin:25px">
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
</asp:Content>

 
<%-- <link href="../../../PaginaVeterinaria/css/style.css" rel="stylesheet" />
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
                       <%-- <div class="owl-carousel service-carousel">--%>
                           <%-- <asp:Repeater ID="repServicio" runat="server">
                                <ItemTemplate>
                                    <div class="service-item">

                                        <div class="service-img mx-auto">
                                            <img class="rounded-circle w-100 h-100 bg-light p-3" src='<%# ResolveUrl("~/Vista/imagenes/servicios/") + Eval("foto") %>' style="object-fit: cover;">
                                        </div>
                                        <div class="position-relative text-center bg-light rounded p-4 pb-5" style="margin-top: -75px;">
                                            <h5 class="font-weight-semi-bold mt-5 mb-3 pt-5"><%#Eval("nombre")%></h5>
                                            <p><%#Eval("descripcion")%></p>
                                            <a href="" class="border-bottom border-secondary text-decoration-none text-secondary"><%#Eval("precio")%></a>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        <%--</div>--%>
                  <%--  </div>
                </div>
            </div>
        </div>--%>
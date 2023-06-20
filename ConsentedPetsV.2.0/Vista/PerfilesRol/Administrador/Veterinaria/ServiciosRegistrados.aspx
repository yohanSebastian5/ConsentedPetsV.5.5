<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/Veterinaria/Veterinaria.Master" AutoEventWireup="true" CodeBehind="ServiciosRegistrados.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.Veterinaria.RegistrosRegistrados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <link href="../../../PaginaVeterinaria/css/style.css" rel="stylesheet" />
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
</asp:Content>

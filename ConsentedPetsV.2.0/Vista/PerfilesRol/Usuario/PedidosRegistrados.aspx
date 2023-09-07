<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Usuario/PerfilUsuario.Master" AutoEventWireup="true" CodeBehind="PedidosRegistrados.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Usuario.PedidosRegistrados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../PaginaTienda/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../PaginaTienda/assets/css/flex-slider.css" rel="stylesheet" />
    <link href="../../PaginaTienda/assets/css/lightbox.css" rel="stylesheet" />
    <link href="../../PaginaTienda/assets/css/font-awesome.css" rel="stylesheet" />
    <link href="../../PaginaTienda/assets/css/owl-carousel.css" rel="stylesheet" />
    <link href="../../PaginaTienda/assets/css/templatemo-klassy-cafe.css" rel="stylesheet" />
    <script src="../../PaginaTienda/assets/js/accordions.js"></script>
    <script src="../../PaginaTienda/assets/js/bootstrap.min.js"></script>
    <script src="../../PaginaTienda/assets/js/custom.js"></script>
    <script src="../../PaginaTienda/assets/js/datepicker.js"></script>
    <script src="../../PaginaTienda/assets/js/imgfix.min.js"></script>
    <script src="../../PaginaTienda/assets/js/isotope.js"></script>
    <script src="../../PaginaTienda/assets/js/jquery-2.1.0.min.js"></script>
    <script src="../../PaginaTienda/assets/js/jquery.counterup.min.js"></script>
    <script src="../../PaginaTienda/assets/js/owl-carousel.js"></script>
    <script src="../../PaginaTienda/assets/js/lightbox.js"></script>
    <script src="../../PaginaTienda/assets/js/popper.js"></script>
    <script src="../../PaginaTienda/assets/js/scrollreveal.min.js"></script>
    <script src="../../PaginaTienda/assets/js/slick.js"></script>
    <script src="../../PaginaTienda/assets/js/waypoints.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">


   


    <!-- ***** Reservation Us Area Starts ***** -->
    <section class="section" id="reservation">
        <div class="container">
            <div class="row">
                
                <div class="col-lg-6 align-self-center" style="flex: 100%; max-width: 100%;">
                    <div class="left-text-content">
                        <div class="section-heading">
                            <h6>Contactanos</h6>
                            <h2>Tus Pedidos</h2>
                        </div>
                </div>
        <asp:Repeater runat="server" ID="repPedido">
                    <ItemTemplate>
                        <div class="col-lg-6">
                            <div class="contact-form" style="padding: 20PX; BORDER: 2PX SOLID ROSYBROWN;">
                                <div class="row">
                                    <div class="col-lg-12">
                                    </div>
                                    <div class="col-lg-6 col-sm-12" >
                                        <fieldset>
                                            <input name="name" type="text" id="name" value="<%# Eval("name") %>">
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-6 col-sm-12">
                                        <fieldset>
                                            <input name="email" type="text" id="email" value="<%# Eval("estado") %>">
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-6 col-sm-12">
                                        <fieldset>
                                            <input name="phone" type="text" id="phone" value="<%# Eval("fecha") %>">
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-6 col-sm-12">
                                        <fieldset>
                                            <input name="cantidad" type="text" id="cantidad" value="<%# Eval("name2") %>">
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-12">
                                        <fieldset>
                                            <textarea name="message" rows="6" id="message"><%# Eval("message") %></textarea>
                                        </fieldset>
                                    </div>
                                   <%-- <div class="col-lg-12">
                                        <fieldset>
                                            <button type="submit" id="form-submit" class="main-button-icon">Hacer Pedido</button>
                                        </fieldset>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            </div>
        </div>
    
    </section>
    <!-- ***** Reservation Area Ends ***** -->
</asp:Content>

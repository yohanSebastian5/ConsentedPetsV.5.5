<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/Veterinaria/Veterinaria.Master" AutoEventWireup="true" CodeBehind="RegistrarServicioV.aspx.cs" Inherits="ConsentedPets.Vista.PerfilesRol.Administrador.Veterinaria.RegistrarServicioV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="../../../Css/Style2.css" rel="stylesheet" />
    <link href="../../../../Styles/sweetalert.css" rel="stylesheet" />
    <script src="../../../../Scripts/sweetalert.min.js"></script>
    <style>
        .left input {
            margin: 40px 0px;
        }

        h4, .h4 {
            font-size: 12px;
        }

        .pet {
            border-radius: 40px
        }

        .right {
            background: linear-gradient(212.38deg, rgba(41 125 159 / 71%) 0%, rgb(149 41 159 / 71%) 100%),url(../imagenes/fondo3.png);
            color: #fff;
            position: relative;
        }

        body {
            background: #a28dcb;
        }

        .submit {
            background: #fd9d9d;
        }

        .ddl {
            width: 300px;
            background: transparent;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <div class="login_box">
        <div class="left">
            <div class="top_link">
                <a href="#">
                    <img src="https://drive.google.com/u/0/uc?id=16U__U5dJdaTfNGobB_OpwAJ73vM50rPV&export=download" alt="">Return home</a>
            </div>
            <div class="contact">
                <form runat="server">
                    <h3>Registrarse</h3>
                    <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre"></asp:TextBox>
                    <asp:TextBox ID="txtDescripcio" runat="server" placeholder="Descripcion"></asp:TextBox>
                    <asp:TextBox ID="txtPrecio" TextMode="Number" runat="server" placeholder="Precio"></asp:TextBox>
                    <asp:DropDownList ID="ddlServicio" runat="server" CssClass="ddl"></asp:DropDownList>
                    <asp:FileUpload ID="FlImagenU" runat="server" />
                    <button runat="server" id="btnRegistrar" class="submit">Registrar</button>
                    <%--                    <asp:Button ID="btnRegistrar" class="submit" runat="server" Text="Registrar" />--%>
                </form>
            </div>
        </div>

        <div class="right">
            <div class="right-text">
                <h2>Consented Pets</h2>
                <h5>Conoce todos nuestro servicios</h5>
            </div>
            <div class="cardsU">
                <div class="container my-3">
                    <div class="row">
                        <div class="col-md-6 col-lg-4 item">
                            <div class="card" href="Vista/Vaterinaria">
                                <img class="pet" src="../../../imagenes/RegistrarServicio/Iconos/Belleza.jpg" />
                                <div class="card-body">
                                    <div style="align-items: center; display: flex;">
                                        <h6>Belleza</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container my-3">
                    <div class="row">
                        <div class="col-md-6 col-lg-4 item">
                            <div class="card" href="Vista/Vaterinaria">
                                <img class="pet" src="../../../imagenes/RegistrarServicio/Iconos/vacunacion.png" />
                                <div class="card-body">
                                    <div style="align-items: center; display: flex;">
                                        <h6>Vacunacion</h6>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="container my-3">
                    <div class="row">
                        <div class="col-md-6 col-lg-4 item">
                            <div class="card" href="Vista/Vaterinaria">
                                <img class="pet" src="../../../imagenes/RegistrarServicio/Iconos/diente.jpg" />
                                <div class="card-body">
                                    <div style="align-items: center; display: flex;">
                                        <h6>Profilazis</h6>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="container my-3">
                    <div class="row">
                        <div class="col-md-6 col-lg-4 item">
                            <div class="card" href="Vista/Vaterinaria">
                                <img class="pet" src="../../../imagenes/RegistrarServicio/Iconos/Urgencias.png" />
                                <div class="card-body">
                                    <div style="align-items: center; display: flex;">
                                        <h6>Urgencias</h6>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="container my-3">
                    <div class="row">
                        <div class="col-md-6 col-lg-4 item">
                            <div class="card" href="Vista/Vaterinaria">
                                <img class="pet" src="../../../imagenes/RegistrarServicio/Iconos/General.jpg" />
                                <div class="card-body">
                                    <div style="align-items: center; display: flex;">
                                        <h6>General</h6>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="container my-3">
                    <div class="row">
                        <div class="col-md-6 col-lg-4 item">
                            <div class="card" href="Vista/Vaterinaria">
                                <img class="pet" src="../../../imagenes/RegistrarServicio/Iconos/Heridas.jpg" />
                                <div class="card-body">
                                    <div style="align-items: center; display: flex;">
                                        <h6>Heridas</h6>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="container my-3">
                    <div class="row">
                        <div class="col-md-6 col-lg-4 item">
                            <div class="card" href="Vista/Vaterinaria">
                                <img class="pet" src="../../../imagenes/RegistrarServicio/Iconos/Exa.jpg" />
                                <div class="card-body">
                                    <div style="align-items: center; display: flex;">
                                        <h6>Examenes</h6>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="container my-3">
                    <div class="row">
                        <div class="col-md-6 col-lg-4 item">
                            <div class="card" href="Vista/Vaterinaria">
                                <img class="pet" src="../../../imagenes/RegistrarServicio/Iconos/Radio.jpg" />
                                <div class="card-body">
                                    <div style="align-items: center; display: flex;">
                                        <h6>Radiografias</h6>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="container my-3">
                    <div class="row">
                        <div class="col-md-6 col-lg-4 item">
                            <div class="card" href="Vista/Vaterinaria">
                                <img class="pet" src="../../../imagenes/RegistrarServicio/Iconos/Cirugia.jpg" />
                                <div class="card-body">
                                    <div style="align-items: center; display: flex;">
                                        <h6>Cirugia</h6>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="right-inductor">
            </div>
        </div>

    </div>
</asp:Content>

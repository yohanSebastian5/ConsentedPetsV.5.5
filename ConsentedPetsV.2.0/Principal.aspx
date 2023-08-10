<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="ConsentedPetsV._2._0.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>CONSENTED PETS</title>

    <link href="Vista/Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Vista/Bootstrap/js/bootstrap.min.js"></script>
<%--    <link href="Vista/Css/Style.css" rel="stylesheet" />--%>
    <link href="Vista/Css/EstiloRepeat.css" rel="stylesheet" />
    <link href="Styles/sweetalert.css" rel="stylesheet" />
    <script src="Scripts/sweetalert.min.js"></script>
</head>
<body style="background-color:#90604A; background-size: cover;">
    <div class="container d-flex align-items-center vh-100">
        <div class="row justify-content-center">
            <h1 style="text-align:center">CONSENTED PETS</h1>
            <form id="form1" runat="server">
                <div class="row justify-content-center">
                    <div class="Pet col-md-3 align-items-center">
                        <div class="vet">
                            <img class="imag" src="Vista/imagenes/vet.png" />
                            <div class="Pet-content">
                                <br />
                                <h2 class="Pet-text">Veterinarias</h2>
                                <br />
                                <p class="card-text">AGENDA PARA QUE TU MASCOTA RECIBA LA MEJOR ATENCIÓN Y CUIDADO PARA SU BIENESTAR</p>
                                <a href="Vista/ClinicaVeterinaria.aspx" class="btn btn-primary">Go</a>
                            </div>
                        </div>
                    </div>
                    <div class="Pet col-md-3 align-items-center">
                        <div class="vet">
                            <img class="imag" src="Vista/imagenes/shop.png" />
                            <div class="Pet-content">
                                <br />
                                <h2 class="Pet-text">Pet Shops</h2>
                                <br />
                                <p class="card-text">ENCUENTRA TODO LO QUE BUSCAS PARA CONSENTIR A TU MASCOTA</p>
                                <a href="Vista/PetShop.aspx" class="btn btn-primary">Go</a>
                            </div>
                        </div>
                    </div>
                    <div class="Pet col-md-3 align-items-center">
                        <div class="vet">
                            <img class="imag" src="Vista/imagenes/school.png" />
                            <div class="Pet-content">
                                <br />
                                <h2 class="Pet-text">Escuelas</h2>
                                <p class="card-text">HAZ QUE TU MASCOTA TENGA UNA TRANSFORMACIÓN EN SU FORMA DE SER RECIBIENDO EL MEJOR ADIESTRAMIENTO CANINO</p>
                                <a href="Vista/Escuela.aspx" class="btn btn-primary">Go</a>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>

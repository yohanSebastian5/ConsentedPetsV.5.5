<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TutorialAdmin.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.TutorialAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/Tutorial.css" rel="stylesheet" />
    <link href="../../Styles/sweetalert.css" rel="stylesheet" />
    <script src="../../Scripts/sweetalert-dev.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <!-- partial:index.partial.html -->
    <div class="step-bar">
        <ul>
            <li>
                <div class="number active">1</div>
                <div class="text">Administrador</div>
            </li>
            <li>
                <div class="number">2</div>
                <div class="text">Veterinaria</div>
                <div class="line"></div>
            </li>
            <li>
                <div class="number">3</div>
                <div class="text">Escuela</div>
                <div class="line"></div>
            </li>
            <li>
                <div class="number">4</div>
                <div class="text">Pet Shop</div>
                <div class="line"></div>
            </li>
        </ul>
    </div>

    <form runat="server" style="width: 100%; height: 85%; display: flex; align-content: center; justify-content: center; align-items: center">
        <div class=" account-setup register-form " style="width: 71%; place-items: center;">
            <h2>PERFIL ADMINISTRADOR</h2>
            <img src="../imagenes/ImagenesTutorial/Imagen1.png" /><br />
            <div class="button firstNext">Next</div>
        </div>
        <div class="user-details register-form " style="width: 71%; place-items: center;">
            <h2>VETERINARIA</h2>
            <img src="../imagenes/ImagenesTutorial/Imagen3.png" /><br />
            <div class="button firstPrev">Back</div>
            <div class="button secondNext">Next</div>
        </div>
        <div class="user-details2 register-form " style="width: 71%; place-items: center;">
            <h2>ESCUELA CANINA</h2>
            <img src="../imagenes/ImagenesTutorial/Imagen4.png" /><br />
            <div class="button treePrev">Back</div>
            <div class="button treeNext">Next</div>
        </div>
        <div class="finish-step register-form" style="width: 71%; place-items: center;">
            <h2>PET SHOP</h2>
            <img src="../imagenes/ImagenesTutorial/Imagen2.png" /><br />

            <div class="button secondPrev">Back</div>
            <asp:Button class="button secondPrev w-100" ID="Button1" runat="server" Text="Terminar Registro" OnClick="Button1_Click"/>
        </div>
    </form>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="js/Tutorial.js"></script>
    <script src="../../Scripts/sweetalert.min.js"></script>
</body>
</html>

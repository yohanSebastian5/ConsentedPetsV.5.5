<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Styles/sweetalert.css" rel="stylesheet" />
    <script src="../Scripts/sweetalert.min.js"></script>
    <script src="../Scripts/sweetalert-dev.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:&display=swap');



        body {
            height: 100vh;
            background-color: #f2f2f2;
            background-image: url("imagenes/back2.jpg");
            background-size: cover; /* optional */
        }


        /* Set up the container for the leaves */
        .leaves-container {
            position: relative;
            height: 100vh;
            overflow: hidden;
        }

        /* Style for the individual leaves */
        .leaf {
            position: absolute;
            width: 30px;
            height: 30px;
            background-color: #9ac23c00;
            border-radius: 50%;
            animation: falling 8s ease-in-out infinite;
        }

        /* Keyframe animation for the falling leaves */
        @keyframes falling {
            0% {
                transform: translateY(-10%);
            }

            100% {
                transform: translateY(3220%);
            }
        }

        /* Position each leaf randomly within the container */
        .leaf:nth-child(1) {
            left: 5%;
            top: -5%;
            animation-delay: 0.5s;
        }

        .leaf:nth-child(2) {
            left: 25%;
            top: -10%;
            animation-delay: 2s;
        }

        .leaf:nth-child(3) {
            left: 45%;
            top: -15%;
            animation-delay: 3.5s;
        }

        .leaf:nth-child(4) {
            left: 65%;
            top: -20%;
            animation-delay: 1s;
        }

        .leaf:nth-child(5) {
            left: 85%;
            top: -25%;
            animation-delay: 2.5s;
        }

        .leaf:nth-child(6) {
            left: 95%;
            top: -15%;
            animation-delay: 2.5s;
        }

        .leaf:nth-child(7) {
            left: 55%;
            top: -15%;
            animation-delay: 1.5s;
        }

        .leaf:nth-child(8) {
            left: 20%;
            top: -15%;
            animation-delay: 1.0s;
        }

        .login-sqr {
            position: absolute;
            top: 100px;
            left: 580px;
            width: 350px;
            height: 300px;
            padding-top: 20;
            padding-bottom: 20px;
            padding-left: 40px;
            padding-right: 40px;
            background-color: rgba(255, 255, 255, 0.26);
            backdrop-filter: blur(10px);
            z-index: -5;
            border-radius: 20px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        /* Center the content */


        /* Style the login box */
        .login-box {
            position: relative;
            top: -80%;
            left: 38%;
            max-width: 400px;
            width: 100%;
            padding: 20px;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.13);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            height: 490px;
        }

        /* Style the form elements */
        label {
            display: block;
            margin-bottom: 2px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 90%;
            height: 45px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 15px;
            font-family: 'Poppins', sans-serif;
        }

        input[type="submit"] {
            background-color: #FFA15F;
            font-family: 'Poppins', sans-serif;
            width: 90%;
            height: 45px;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

            input[type="submit"]:hover {
                background-color: #ee6428;
            }

        /* Responsive styles */
        @media screen and (max-width: 600px) {
            .login-box {
                max-width: 300px;
            }
        }

        .espacio {
            margin-top: 30px;
        }

        .top_link {
            width: 34px;
            height: 29px;
        }

        /* Add more leaves by duplicating the .leaf style block and modifying the nth-child and animation-delay values */
    </style>
</head>
<body>
    <div class="leaves-container">
        <!-- Add 20 leaves to the container -->
        <div class="leaf">
            <img src="imagenes/leave2.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave2.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave2.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave2.png" /></div>
        <br />
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>
        <div class="leaf">
            <img src="imagenes/leave1.png" /></div>



    </div>

    <div class="login-box">
        <div class="top_link">
            <a href="../Principal.aspx">
                <img src="imagenes/atras.png" style="width:40px" alt="" /></a>
        </div>
        <h2 style="text-align: center; font-family: 'Poppins', sans-serif; margin-top: 40px">Iniciar Sesion</h2>
        <br />
        <form runat="server">

            <input class="espacio" type="text" id="txtUsuario" runat="server" name="username" placeholder="Username" required="" />
            <input class="espacio" type="password" id="txtContraseña" runat="server" name="password" placeholder="Password" required="" />


            <asp:Button ID="btnIngresar" class="espacio" runat="server" Text="LOGIN" OnClick="btnIngresar_Click" />
            <br />
            <br />

            <a href="Usuario/RegistrarUsuario.aspx" style="color: white; text-decoration: none">¿No Tienes Cuenta? Registrate</a>
        </form>

    </div>
    <script src="../Scripts/sweetalert.min.js"></script>
</body>
</html>

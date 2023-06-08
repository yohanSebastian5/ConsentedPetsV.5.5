<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ElegirPerfil.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.ElegirPerfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Css/RegistrarV.css" rel="stylesheet" />
     <style>
        body {
            background-image: url('  ../imagenes/elegirperfil.jpg');

            background-size: cover;     
            background-repeat: no-repeat;
        }

    </style>
    <title></title>
</head>
<body>
    <div class="bg-img">
        <div class="content">
            <header>Elige Tu Pefil</header>
            <br />
            <form id="form1" runat="server">
                <div class="field space">
           
                    <asp:Button ID="btnUsuario" runat="server" Text="Perfil Usuario" OnClick="btnUsuario_Click" />
                </div>
                <br />
                <div class="field space">
           
                    <asp:Button ID="btnAdministrador" runat="server" Text="Perfil Administrador" OnClick="btnAdministrador_Click" />
                </div>
            </form>
        </div>
    </div>
</body>
</html>

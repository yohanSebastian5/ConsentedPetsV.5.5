<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/PerfilAdmin.Master" AutoEventWireup="true" CodeBehind="RegistrarVeterinaria.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.RegistrarVeterinaria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">

    <link href="../css/añadirVeterinaria.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <div class="page">
        <div class="container">
            <div class="left" style="justify-content: center; align-items: center; display: flex;">
                <div class="login">
                    <h2 style="display: flex; justify-content: center;">Registra</h2>
                    <img src="../../imagenes/logo.png" style="border-radius: 62%; width: 326px;" />
                    <h2 style="display: flex; justify-content: center;">Tu Veterinaria</h2>
                </div>
            </div>
            <div class="right">
                <svg viewBox="0 0 320 300">
                    <defs>

                        <linearGradient
                            iknkscape:collect="always"
                            id="linearGradient"
                            x1="13"
                            y1="193.49992"
                            x2="307"
                            y2="193.49992"
                            gradientUnits="userSpaceOnUse">
                            <stop
                                style="stop-color: #ff00ff;"
                                offset="0"
                                id="stop876" />
                            <stop
                                style="stop-color: #ff0000;"
                                offset="1"
                                id="stop878" />
                        </linearGradient>
                    </defs>
                    <path d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />
                </svg>
                <div class="form">
                    <div class="d-flex align-content-between">
                        <asp:Image ID="Image1" src="../../imagenes/logoimg.png" runat="server" Style="border-radius: 52%; width: 250px; height: 250px;" />
                    </div>


                    <label for="email">Nombre</label>
                    <input id="txtNombre" runat="server">
                    <label for="password">Telefono</label>
                    <input id="txtTelefono" runat="server">
                    <label for="password">Direccion</label>
                    <input id="txtDireccion" runat="server">
                    <label for="password">email</label>
                    <input type="email" style="margin-bottom: 10px" runat="server" id="txtEmail">
                    <asp:FileUpload ID="FlImagenV" Font-Size="Small" runat="server" onchange="cargar(this);" />
                    <input type="submit" style="margin-top: 10px" runat="server" id="submit" value="Submit">
                </div>
            </div>
        </div>
    </div>
    <script>
        function cargar(input) {
            console.log('cae');
            if (input.files[0]) {
                var img = new FileReader();
                console.log('caer');
                img.onload = function (e) {
                    document.getElementById("<%= Image1.ClientID %>").src = e.target.result;
                    console.log(e.target.result);
                };
                img.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Usuario/PerfilUsuario.Master" AutoEventWireup="true" CodeBehind="RegistrarMascota.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Usuario.RegistrarMascota" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/RegistroMascota.css" rel="stylesheet" />
    <script src="../../../Scripts/sweetalert.min.js"></script>
    <link href="../../../Styles/sweetalert.css" rel="stylesheet" />
    <style>
        .ocultar {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <div class="signup-container">
        <div class="left-container">
            <h1>
                <i class="fas fa-paw"></i>
                CONSENTED PETS
            </h1>
            <div class="puppy">
                <img src="../../imagenes/muchi.png">
            </div>
        </div>
        <div class="right-container">
            <header>
                <h1>!Recibe la Mejor Atencion Para tu Mascota!</h1>
                <div class="set">
                    <div class="pets-name">
                        <label for="pets-name">Nombre</label>
                        <input id="nombre" required="" runat="server" type="text" placeholder="Nombre">
                    </div>
                    <div class="pets-photo">
                        <button id="pets-upload" onclick="document.getElementById('<%= FlFotoM.ClientID %>').click()">
                            <i class="fas fa-camera-retro"></i>
                        </button>
                        <asp:FileUpload ID="FlFotoM" required="" onchange="updateLabel(this)" CssClass="ocultar" runat="server" />
                        <label id="labeli" for="FlFotoM">Cargar Imagen</label>

                    </div>
                </div>
                <div class="set">
                    <div class="pets-breed">
                        <label for="pets-breed">Especie</label>
                        <input id="especie" runat="server" required="" type="text" placeholder="Especie">
                    </div>
                    <div class="pets-breed">
                        <label for="pets-breed">Raza</label>
                        <input id="raza" runat="server" required="" type="text" placeholder="Raza">
                    </div>
                </div>
                <div class="set">
                    <div class="pets-gender" style="margin-right: 70px">
                        <label for="pet-gender-female">Genero</label>
                        <div class="radio-container">
                            <input id="pet-gender-female" name="pet-gender" type="radio" value="Hembra" checked>
                            <label for="pet-gender-female">Hembra</label>
                            <input id="pet-gender-male" name="pet-gender" type="radio" value="Macho">
                            <label for="pet-gender-male">Macho</label>
                        </div>
                    </div>
                </div>

                <div class="pets-weight">
                    <label for="pet-weight-0-25">Edad</label>
                    <div class="radio-container">
                        <input id="pet-weight-0-25" name="pet-weight" type="radio" value="0-2 años" checked>
                        <label for="pet-weight-0-25">0-2 años</label>
                        <input id="pet-weight-25-50" name="pet-weight" type="radio" value="2-6 años">
                        <label for="pet-weight-25-50">2-6 años</label>
                        <input id="pet-weight-50-100" name="pet-weight" type="radio" value="6-9 años">
                        <label for="pet-weight-50-100">6-9 años</label>
                        <input id="pet-weight-100-plus" name="pet-weight" type="radio" value="+9 años">
                        <label for="pet-weight-100-plus">+ 9 años</label>
                    </div>
                </div>
                <div class="set">
                    <div class="pets-breed" style="margin-right: 70px">
                        <label for="pets-breed">Condicion Medica</label>
                        <textarea required="" id="txtCondicion" runat="server" style="height: 100px; width: 350px;" textmode="MultiLne" type="text">  </textarea>
                    </div>
                </div>
            </header>
            <footer>
                <div class="set">
                    <button runat="server" id="next">Next</button>
                </div>
            </footer>
        </div>
    </div>
    <script>
        function updateLabel(fileInput) {
            var label = document.getElementById('labeli');
            console.log("Entra");
            if (fileInput.files.length > 0) {
                label.innerHTML = 'Imagen Guardada: ' + fileInput.files[0].name;
                console.log("Vacio");
            } else {
                label.innerHTML = 'Cargar Imagen';
                console.log("no vacio");
            }
        }
    </script>
</asp:Content>

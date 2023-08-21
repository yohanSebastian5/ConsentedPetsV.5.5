<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/EscuelaCanina/Escuela.Master" AutoEventWireup="true" CodeBehind="EditarPerfilE.aspx.cs" Inherits="ConsentedPets.Vista.PerfilesRol.Administrador.EscuelaCanina.EditarPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="../../../Css/RegistrarV.css" rel="stylesheet" />
    <script src="../../../../Scripts/sweetalert.min.js"></script>
    <link href="../../../../Styles/sweetalert.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

    <style>
        body {
            /**/ background-image: url('../../../imagenes/school.png');
            background-size: cover;
            background-repeat: no-repeat;
        }

        ::placeholder {
            color: white;
        }

        .imgUsuarioP {
            width: 200px;
            height: 200px;
            border-radius: 100px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">

    <div class="bg-img" style="background: rgba(0,0,0,0.4)">
        <div class="content">
            <header>Datos de Tu Escuela</header>
            <br />
            <form runat="server">
                <div>
                    <asp:Image ID="Image1" CssClass="imgUsuarioP" runat="server" />
                </div>
                <br />
                <div class="field space">
                    <span class="bi bi-buildings-fill"></span>
                    <asp:TextBox ID="txtNombre" placeholder="Nombre" runat="server" required="" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />
                <div class="field space">
                    <span class="bi-house-add-fill"></span>
                    <asp:TextBox ID="txtDireccion" placeholder="Direccion" runat="server" required="" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />
                <div class="field space">
                    <span class="bi-telephone-plus-fill"></span>
                    <asp:TextBox ID="txtTelefono" placeholder="Telefono" TextMode="Number" runat="server" required="" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />
                <div class="field space">
                    <span class=" bi-envelope-plus-fill"></span>
                    <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" required="" TextMode="Email" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />
                <asp:FileUpload ID="FlImagenV" onchange="cargar(this)" runat="server" CssClass="field space" />

                <br />
                <br />
                <div class="field">
                    <asp:Button ID="btnRegistrar" runat="server" Text="Actualizar" OnClick="btnRegistrar_Click" OnClientClick="return registrarYMostrarSweetAlert();" />
                </div>
            </form>
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
        function registrarYMostrarSweetAlert() {
            // Realiza las operaciones de actualización aquí
            // ...

            // Muestra el SweetAlert
            swal('¡Informacion Actualizada!', 'Su Escuela Canina ha sido actualizada con éxito', 'success');

            // Devuelve false para evitar el postback
            return false;
        }
    </script>


</asp:Content>

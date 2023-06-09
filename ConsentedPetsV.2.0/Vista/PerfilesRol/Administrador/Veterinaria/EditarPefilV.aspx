<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/Veterinaria/Veterinaria.Master" AutoEventWireup="true" CodeBehind="EditarPefilV.aspx.cs" Inherits="ConsentedPets.Vista.PerfilesRol.Administrador.Veterinaria.EditarPefilV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="../../../Css/RegistrarV.css" rel="stylesheet" />
        <script src="../../../../Scripts/sweetalert.min.js"></script>
    <link href="../../../../Styles/sweetalert.css" rel="stylesheet" />
    <style>
        body {
            /**/ background-image: url('../../../imagenes/editarPerfilV.jpg');
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

    <form runat="server">
    <div class="bg-img" style="background: rgba(0,0,0,0.4)">
        <div class="content">
            <header>Datos de Tu Veterinaria</header>
            <br />
            <div>
                <asp:Image ID="Image1" CssClass="imgUsuarioP" runat="server" /></div>
            <br />
            <div class="field space">
                <span class="fa fa-user"></span>
                <asp:TextBox ID="txtNombre" placeholder="Nombre" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            </div>
            <br />
            <div class="field space">
                <span class="fa fa-user"></span>
                <asp:TextBox ID="txtDireccion" placeholder="Direccion" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            </div>
            <br />
            <div class="field space">
                <span class="fa fa-user"></span>
                <asp:TextBox ID="txtTelefono" placeholder="Telefono" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            </div>
            <br />
            <div class="field space">
                <span class="fa fa-user"></span>
                <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            </div>
            <br />
            <asp:FileUpload ID="FlImagenV" onchange="cargar(this)" runat="server" CssClass="field space" />

            <br />
            <br />
            <div class="field">
                <asp:Button ID="btnRegistrar" runat="server" Text="Actualizar" OnClick="btnRegistrar_Click" />
            </div>
        </div>
    </div>
</form>
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

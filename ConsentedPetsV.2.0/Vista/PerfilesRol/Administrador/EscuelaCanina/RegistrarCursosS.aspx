<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/EscuelaCanina/Escuela.Master" AutoEventWireup="true" CodeBehind="RegistrarCursosS.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina.RegistrarCursosS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="../../css/registrar.css" rel="stylesheet" />
    <link href="../../../../Styles/sweetalert.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <!-- partial:index.partial.html -->
    <div class="step-bar">
        <ul>
            <li>
                <div class="number active">1</div>
                <div class="text">Servicio</div>
            </li>
            <li>
                <div class="number">2</div>
                <div class="text">Curso</div>
                <div class="line"></div>
            </li>
            <li>
                <div class="number">3</div>
                <div class="text">Detalles</div>
                <div class="line"></div>
            </li>
        </ul>
    </div>
    <h1>Registrar Tu Curso</h1>
    <form runat="server">
        <div class="account-setup register-form">
            <h2>Registra tu Servicio o Seleccionalo</h2>
            <asp:Image ID="Image2" Style="border-radius: 52%; width: 250px; height: 250px;" runat="server" />
            <input id="txtServcio" runat="server" name="email" type="text" placeholder="Nombre Servicio" />
            <asp:DropDownList ID="ddlTipo" name="email" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTipo_SelectedIndexChanged"></asp:DropDownList>
            <asp:FileUpload ID="FileUpload2" CssClass="diseño" runat="server" onchange="cargar2(this)" />
            <div class="button firstNext">Next</div>
        </div>
        <div class="user-details register-form ">
            <h2>Datos del Curso</h2>
            <input id="txtNombre" runat="server" name="name" type="text" placeholder="Nombre" />
            <input id="txtDescripcion" runat="server" name="counrty" type="text" placeholder="Descripcion" />
            <input id="txtPrecio" runat="server" name="city" type="text" placeholder="Precio" />
            <div class="button firstPrev">Back</div>
            <div class="button secondNext">Next</div>
        </div>
        <div class="finish-step register-form">
            <h2>Foto del Curso</h2>
            <asp:Image src="../../../imagenes/logoimg.png" ID="Image1" Style="border-radius: 52%; width: 250px; height: 250px;" runat="server" />
            <asp:FileUpload ID="FileUpload1" CssClass="diseño" runat="server" onchange="cargar(this)" />
            <div class="button secondPrev">Back</div>

            <asp:Button class="button secondPrev w-100" ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />

        </div>
    </form>
    <!-- partial -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="../../js/Registrar.js"></script>
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
        function cargar2(input) {
            console.log('cae');
            if (input.files[0]) {
                var img = new FileReader();
                console.log('caer');
                img.onload = function (e) {
                    document.getElementById("<%= Image2.ClientID %>").src = e.target.result;
                    console.log(e.target.result);
                };
                img.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script src="../../../../Scripts/sweetalert.min.js"></script>
    <script src="../../../../Scripts/sweetalert-dev.js"></script>
</asp:Content>

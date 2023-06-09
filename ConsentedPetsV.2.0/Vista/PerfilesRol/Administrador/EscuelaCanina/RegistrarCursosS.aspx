<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/EscuelaCanina/Escuela.Master" AutoEventWireup="true" CodeBehind="RegistrarCursosS.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina.RegistrarCursosS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="../../css/registrar.css" rel="stylesheet" />
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
            <h2>Servicio</h2>
            <input name="email" type="text" placeholder="Nombre Servicio" />
            <asp:DropDownList ID="DropDownList1" name="email" runat="server"></asp:DropDownList>
            <div class="button firstNext">Next</div>
        </div>
        <div class="user-details register-form">
            <h2>Curso</h2>
            <input name="name" type="text" placeholder="Nombre" />
            <input name="counrty" type="text" placeholder="Descripcion" />
            <input name="city" type="text" placeholder="Precio" />
            <div class="button firstPrev">Back</div>
            <div class="button secondNext">Next</div>
        </div>
        <div class="finish-step register-form">
            <h2>Foto</h2>
            <input name="city" type="text" placeholder="Precio" />
            <asp:FileUpload ID="FileUpload1" CssClass="diseño" runat="server" />
            <input name="counrty" type="text" placeholder="Descripcion" />
            <div class="button secondPrev">Back</div>
            <div class="button disabled">Register</div>
        </div>
    </form>
    <!-- partial -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="../../js/Registrar.js"></script>
</asp:Content>

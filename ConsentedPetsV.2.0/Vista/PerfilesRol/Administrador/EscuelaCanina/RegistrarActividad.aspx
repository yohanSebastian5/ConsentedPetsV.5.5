<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/EscuelaCanina/Escuela.Master" AutoEventWireup="true" CodeBehind="RegistrarActividad.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.EscuelaCanina.RegistrarActividad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.1/js/all.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.transit/0.9.12/jquery.transit.js" integrity="sha256-mkdmXjMvBcpAyyFNCVdbwg4v+ycJho65QLDwVE3ViDs=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link href="../../css/RegistrarActividad.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <!-- partial:index.partial.html -->
    <!-- NORMALIZED CSS INSTALLED-->
    <!-- View settings for more info.-->
    <div id="container">
        <div id="inviteContainer">
            <div class="logoContainer">
                <img class="logo" src="../../../imagenes/RActividad.jpg" /></div>
            <div class="acceptContainer">
                <form runat="server">
                    <h1>!REGISTRA TU ACTIVIDAD!</h1>
                    <div class="formContainer">
                        <div class="formDiv" style="transition-delay: 0.2s">
                            <p>Nombre</p>
                            <input type="text" id="txtnombre" runat="server" required="" />
                        </div>
                        <div class="formDiv" style="transition-delay: 0.4s">
                            <p>Descripcion</p>
                            <input type="text" id="txtDescripcion" runat="server" required="" />
                        </div>
                          <div class="formDiv" style="transition-delay: 0.6s">
                           <div class="mb-3">
                                <label for="fechaCita">Fecha de la Cita</label>
                                    <asp:Calendar ID="calendarFecha" runat="server" OnSelectionChanged="calendarFecha_SelectionChanged"></asp:Calendar>
                                    <input type="text" id="txtFecha" runat="server" required="" />
                                </div>
                            </div>
                        </div>
                        <div class="formDiv" style="transition-delay: 0.6s">
                            <button class="acceptBtn" runat="server" id="btnR" type="submit">Registrar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- partial -->
    <script src="../../js/RegistrarActividad.js"></script>

</asp:Content>

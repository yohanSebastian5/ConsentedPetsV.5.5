<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Veterinaria/VeterinariaInicio.Master" AutoEventWireup="true" CodeBehind="Cita.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.Veterinaria.Cita" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <link href="../Css/estiloCita.css" rel="stylesheet" />

    <title>Agendamiento de Citas para Mascotas</title>

    
    <div class="container">
        <h1>Agendamiento de Citas para Mascotas</h1>
        <div class="mb-3">
            <label for="mascota">Nombre de la Mascota</label>
            <asp:DropDownList ID="ddlMascota" CssClass="cajas" runat="server"></asp:DropDownList>

        </div>

        <div class="mb-3">
            <label for="fechaCita">Fecha de la Cita</label>
            <div class="calendar-container">
                <asp:Calendar ID="calendarFecha" runat="server" OnSelectionChanged="calendarFecha_SelectionChanged"></asp:Calendar>
            </div>
        </div>
        <div class="mb-3">
            <label for="fechaSeleccionada">Fecha Seleccionada:</label>
            <asp:TextBox ID="fechaSeleccionadaTextBox" runat="server" ReadOnly="true"></asp:TextBox>
        </div>

        <div class="mb-3">
            <label for="hora">Hora de la Cita</label>
            <asp:DropDownList ID="ddlHora" CssClass="form-select" runat="server">
                <asp:ListItem Value="08:00 am">08:00 am</asp:ListItem>
                <asp:ListItem Value="08:30 am">08:30 am</asp:ListItem>
                <asp:ListItem Value="09:00 am">09:00 am</asp:ListItem>
                <asp:ListItem Value="09:30 am">09:30 am</asp:ListItem>
                <asp:ListItem Value="10:00 am">10:00 am</asp:ListItem>
                <asp:ListItem Value="10:30 am">10:30 am</asp:ListItem>
                <asp:ListItem Value="11:00 am">11:00 am</asp:ListItem>
                <asp:ListItem Value="11:30 am">11:30 am</asp:ListItem>
                <asp:ListItem Value="12:00 am">12:00 am</asp:ListItem>
                <asp:ListItem Value="12:30 am">12:30 am</asp:ListItem>
                <asp:ListItem Value="13:00 pm">13:00 pm</asp:ListItem>
                <asp:ListItem Value="13:30 pm">13:30 pm</asp:ListItem>
                <asp:ListItem Value="14:00 pm">14:00 pm</asp:ListItem>
                <asp:ListItem Value="14:30 pm">14:30 pm</asp:ListItem>
                <asp:ListItem Value="15:00 pm">15:00 pm</asp:ListItem>
                <asp:ListItem Value="15:30 pm">15:30 pm</asp:ListItem>
                <asp:ListItem Value="16:00 pm">16:00 pm</asp:ListItem>
                <asp:ListItem Value="16:30 pm">16:30 pm</asp:ListItem>
                <asp:ListItem Value="17:00 pm">17:00 pm</asp:ListItem>
                <asp:ListItem Value="17:30 pm">17:30 pm</asp:ListItem>
                <asp:ListItem Value="18:00 pm">18:00 pm</asp:ListItem>
                <asp:ListItem Value="18:30 pm">18:30 pm</asp:ListItem>
                

            </asp:DropDownList>
        </div>

        <div class="mb-3">
            <label for="estadoCita">Estado</label>
            <asp:DropDownList ID="ddlEstado" CssClass="form-select" runat="server">
                <asp:ListItem Value="">Seleccione el estado</asp:ListItem>
                <asp:ListItem Value="pendiente">Pendiente</asp:ListItem>
                <asp:ListItem Value="confirmada">Confirmada</asp:ListItem>
                <asp:ListItem Value="cancelada">Cancelada</asp:ListItem>
            </asp:DropDownList>
        </div>

        <asp:Button ID="btnAgendarCita" runat="server" Text="Agendar Cita" OnClick="btnAgendarCita_Click" />
    </div>

<%--    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/timepicker/jquery.timepicker.min.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/timepicker/jquery.timepicker.min.css" />--%>


</asp:Content>

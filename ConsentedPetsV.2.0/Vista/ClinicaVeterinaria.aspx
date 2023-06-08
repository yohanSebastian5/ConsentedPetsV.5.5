<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site1.Master" AutoEventWireup="true" CodeBehind="ClinicaVeterinaria.aspx.cs" Inherits="ConsentedPets.Vista.ClinicaVeterinaria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&family=Roboto:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500&display=swap" rel="stylesheet">
    <link href="Css/EstiloRepeat.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>

    <h1>Veterinarias</h1>
    <div class="row container justify-content-evenly" runat="server">

        <asp:Repeater ID="repVet" runat="server">
            <ItemTemplate>

                <div class="Pet col-md-3 align-items-center">

                    <img src='<%# ResolveUrl("~/Vista/imagenes/ImagenesEstablecimiento/") + Eval("foto") %>' />
                    <div class="Pet-content">
                        <h2 class="Pet-text"><%#Eval("nombre") %>
                        </h2>


                        <h2></h2>
                        <br />
                        <p class="Pet-text">
                            <%#Eval("direccion")%><br />
                            <br />
                            <%#Eval("telefono")%><br />
                            <br />
                            <%#Eval("email")%>
                        </p>
                        <h2 style="display: none" id="idV" contenteditable="inherit"><%#Eval("idVeterinaria") %></h2>
                        <a id="enlace" href="Login.aspx" onclick="listarVet(this)" class="Pet-text">Ver más </a>
                        <%--         <a onclick="listarVet(this)" class="Pet-text">Ver más</a>--%>
                        <%--<a href="Login.aspx?idVeterinaria= <%# Session["idVeterinaria"] %>" class="Pet-text">Ver más</a>--%>
                    </div>
                </div>


            </ItemTemplate>
        </asp:Repeater>
    </div>
    <script>
        function listarVet(elementoA) {
            var valor = elementoA.previousElementSibling.innerText;;
            $.ajax({
                type: "POST",
                url: "ClinicaVeterinaria.aspx/ListarV",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ tipo: valor }),
                success: function (data) {
                    console.log(valor);
                }, error: function (xhr, textStatus, errorThrown) {
                    // Manejar cualquier error que ocurra durante la llamada AJAX
                    console.error(errorThrown);
                }

            });
        }
    </script>

        </main>
</asp:Content>

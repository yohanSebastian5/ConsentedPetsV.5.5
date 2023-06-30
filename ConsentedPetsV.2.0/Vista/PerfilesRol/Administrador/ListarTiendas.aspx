<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/PerfilAdmin.Master" AutoEventWireup="true" CodeBehind="ListarTiendas.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.ListarTiendas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
    <link href="../../Css/EstiloRepeat.css" rel="stylesheet" />
    <style>
        .ocultar {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <div style="background-color: darkslategrey">
        <h1>Tiendas de Mascotas</h1>
        <asp:Button ID="Button1" CssClass="ocultar" runat="server" Text="Button" OnClick="Button1_Click" />
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
                            <h2 style="display: none" id="idV" class="Pet-text" contenteditable="inherit"><%#Eval("idVeterinaria") %></h2>
                            <a id="enlace" onclick="listarVet(this)" class="Pet-text">Ver más 
                            </a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <script>
        function listarVet(elementoA) {
            var valor = elementoA.previousElementSibling.innerText;;
            $.ajax({
                type: "POST",
                url: "ListarTiendas.aspx/ListarV",
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
            activarBoton();
        }
        function activarBoton() {
            // Obtiene una referencia al botón
            var boton = document.getElementById('<%= Button1.ClientID %>');

            // Simula el clic en el botón
            if (boton) {
                boton.click();
            }
        }

    </script>
</asp:Content>

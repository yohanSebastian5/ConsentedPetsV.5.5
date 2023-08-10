<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site1.Master" AutoEventWireup="true" CodeBehind="Escuela.aspx.cs" Inherits="ConsentedPets.Vista.Escuela" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Css/EstiloRepeat.css" rel="stylesheet" />
    <main>

        <h1>Escuelas Caninas</h1>
        <div class="row container justify-content-evenly" runat="server">

            <asp:Repeater ID="repSchool" runat="server">
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
                            <h2 style="display: none" id="idE" contenteditable="inherit"><%#Eval("idVeterinaria") %></h2>
                            <a id="enlace" href="Login.aspx" onclick="ListarSchool(this)" class="Pet-text">Ver más </a>

                        </div>
                    </div>


                </ItemTemplate>
            </asp:Repeater>
        </div>
        <script>
            function ListarSchool(elementoA) {
                var valor = elementoA.previousElementSibling.innerText;;
                $.ajax({
                    type: "POST",
                    url: "Escuela.aspx/ListarE",
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Site1.Master" AutoEventWireup="true" CodeBehind="PetShop.aspx.cs" Inherits="ConsentedPets.Vista.PetShop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&family=Roboto:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500&display=swap" rel="stylesheet">
    <link href="Css/EstiloRepeat.css" rel="stylesheet" />
    <main>
        <h1>Pet Shops</h1>
        <div class="row container justify-content-evenly" runat="server">
            
        <asp:Repeater ID="repShop" runat="server">
            <ItemTemplate>
              
                <div class="Pet col-md-3 align-items-center">
                    
                    <img src='<%# ResolveUrl("~/Vista/imagenes/PetShop/") + Eval("foto") %>'/>

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
                    url: "PetShop.aspx/ListarE",
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
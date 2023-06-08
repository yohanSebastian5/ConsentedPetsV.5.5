<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Usuario/PerfilUsuario.Master" AutoEventWireup="true" CodeBehind="MascotasRegistradas.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Usuario.MascotasRegistradas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <link href="../../Css/MascotasRegistradasUsuario.css" rel="stylesheet" />




    <div class="main">
        <div class="row container justify-content-evenly">
            
                    <ul class="cards">
                        <asp:Repeater ID="repMascota" runat="server">
                <ItemTemplate>
                        <li class="cards_item">
                            <div class="card">
                                <div class="card_image">
                                    <img src='<%# ResolveUrl("~/Vista/imagenes/ImagenesMascota/") + Eval("foto") %>' />
                                </div>
                                <div class="card_content">
                                    <h2 class="card_title"><%# Eval("nombre") %></h2>
                                    <div class="card_text">
                                        <p>
                                            <label>Especie:</label>
                                            <%# Eval("especie") %>
                                            <br />
                                            <label>Raza:</label>
                                            <%# Eval("raza") %>
                                            <br />
                                            <label>Edad:</label>
                                            <%# Eval("edad") %>
                                            <br />
                                            <label>Condicion Medica:</label>
                                            <%# Eval("condicionMedica") %>
                                        </p>
                                        <hr />
                                    </div>
                                </div>
                            </div>
                        </li>
                          </ItemTemplate>
            </asp:Repeater>
                    </ul>
              
        </div>
    </div>


</asp:Content>


<%--  <main>

    <link href="../Css/repCard.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500&display=swap" rel="stylesheet">
    <h1>Servicios</h1>
    <div class="cards container justify-content-evenly">
    <asp:Repeater ID="repServicio" runat="server">
        <ItemTemplate>
            
                <div class="card Pet col-md-3 align-items-center">
                    <img src='<%# ResolveUrl("~/Vista/imagenes/servicios/") + Eval("foto") %>'/>
                   <p class="card-desc">
                            <%#Eval("nombre")%><br />
                            <br />
                            <%#Eval("descripcion")%><br />
                            <br />
                            <%#Eval("precio")%>
                        <a href="Cita.aspx" class="Pet-text">Ver más                                 
                        </a>
                        </p>
                </div>        
        </ItemTemplate>
    </asp:Repeater>
        </div>
      </main>
</asp:Content>--%>

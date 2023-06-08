<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Veterinaria/VeterinariaInicio.Master" AutoEventWireup="true" CodeBehind="ListarServicioss.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.Veterinaria.ListarServicioss" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">

  <main>

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
</asp:Content>

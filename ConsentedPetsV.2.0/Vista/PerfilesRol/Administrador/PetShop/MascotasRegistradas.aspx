<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/PetShop/PetShop.Master" AutoEventWireup="true" CodeBehind="MascotasRegistradas.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.PetShop.MascotasRegistradas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
     <link href="../../css/ListarMascotas.css" rel="stylesheet" />
    <style>
        body{
            background:#bdd3f3;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <h1 style="justify-content: center; align-items: center; display: flex; margin-top: 50px; color: white; font-size: 69px;">MASCOTAS REGISTRADAS</h1>
    <asp:Repeater ID="repCard" runat="server">
        <ItemTemplate>
            <div class="card" style="flex-direction: initial">
                <div class="thumbnail">
                    <img class="left" src='<%# ResolveUrl("../../../imagenes/ImagenesMascota/") + Eval("foto") %>' />
                </div>
                <div class="right" style="margin-left: 60px">
                    <h1>Mascota: <%# Eval("nombre") %></h1>
                    <h1>Especie: <%# Eval(" especie") %></h1>
                    <div class="separator"></div>
                    <p>
                       Raza: <%# Eval("raza") %><br />
                       Genero: <%# Eval("genero") %><br />
                       Edad: <%# Eval("edad") %><br />
                       Precio:  $<%# Eval("precio") %><br />
                    </p>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

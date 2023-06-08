<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/Veterinaria/VeterinariaInicio.Master" AutoEventWireup="true" CodeBehind="ListarVeterinarios.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.Veterinaria.ListarVeterinarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <link href="../Css/EstiloRepeat.css" rel="stylesheet" />
    <div class="row container">
        <asp:Repeater ID="repVete" runat="server">
            <ItemTemplate>
                 <div class="Pet col-md-3 align-items-center">
                    
                    <img src='<%# ResolveUrl("~/Vista/imagenes/veterinarios/") + Eval("foto") %>'/>

                    <div class="Pet-content">
                        <h2 class="Pet-text"><%#Eval("nombre") %>
                        </h2>
                        <h2></h2>
                        <br />
                        <p class="Pet-text">
                            <%#Eval("direccion")%>
                            <br />
                            <%#Eval("telefono")%>
                            <br />
                            <%#Eval("email")%>
                            <br />
                            
                        </p>
                        <a href="#" class="Pet-text">Ver más      
                           
                        </a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

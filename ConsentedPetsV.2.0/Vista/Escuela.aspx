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
                    
                    <img src='<%# ResolveUrl("~/Vista/imagenes/ImagenesEstablecimiento/") + Eval("foto") %>'/>

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
                        <a href="#" class="Pet-text">Ver más      
                           
                        </a>
                    </div>
                </div>
           
               
            </ItemTemplate>
        </asp:Repeater>
             </div>
    </main>
</asp:Content>

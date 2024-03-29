﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Usuario/PerfilUsuario.Master" AutoEventWireup="true" CodeBehind="RegistroMascota.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Usuario.RegistroMascota" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head"   runat="server">
    <link href="../../Css/RegistrarV.css" rel="stylesheet" />
    <script src="../../../Scripts/sweetalert.min.js"></script>
    <link href="../../../Styles/sweetalert.css" rel="stylesheet" />
   
       <style>
        body {
            background-image: url('../../imagenes/fondoRegistroM.png.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">

      <div class="bg-img" style="background: rgba(0,0,0,0.3);">
        <div class="content" style="background: rgb(120 110 110 / 61%);">
            <header style="color: #aeb0b7e0;">Registra Tu mascota</header>
            <br />
                <div class="field space">
                    <span class="fa fa-user"></span>
                    <asp:TextBox CssClass="quitarmargen" ID="txtNombre" required="" placeholder="Nombre" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />
                <div class="field space">
                    <span class="fa fa-user "></span>
                    <asp:TextBox CssClass="quitarmargen" ID="txtEspecie" required="" placeholder="Especie" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />
                <div class="field space">
                    <span class="fa fa-user"></span>
                    <asp:TextBox CssClass="quitarmargen" ID="txtRaza" required="" placeholder="Raza" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />
                <div class="field space">
                    <span class="fa fa-user"></span>
                    <asp:TextBox ID="txtEdad" CssClass="quitarmargen" required="" placeholder="Edad" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />
                <div class="field space">
                    <span class="fa fa-user"></span>
                    <asp:TextBox ID="txtGenero" CssClass="quitarmargen" required="" placeholder="Genero" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />

                <%--<asp:DropDownList ID="ddlGenero" runat="server" CssClass="field space"></asp:DropDownList>--%>

                <%--  <div class="field space">
                    <span class="fa fa-user"></span>
                                     
                </div>--%>
                <br />
                <asp:FileUpload  ID="FlFotoM" runat="server" CssClass="field space" />
                <br />
                <div class="field space">
                    <span class="fa fa-user"></span>
                    <asp:TextBox CssClass="quitarmargen" ID="txtCondicion" required="" placeholder="Condicion Medica" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </div>

                <br />
                <br />
                <div class="field">
                    <asp:Button CssClass="quitarmargen" ID="btnRegistrar" runat="server" Text="REGISTRAR" OnClick="btnRegistrar_Click" />
                </div>

        </div>
    </div>


    <script src="../../Bootstrap/js/bootstrap.min.js"></script>
</asp:Content>

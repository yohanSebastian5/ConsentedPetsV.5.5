<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/PetShop/PetShop.Master" AutoEventWireup="true" CodeBehind="RegistrarMascota.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.PetShop.RegistrarMascota" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="../../../Css/RegistrarV.css" rel="stylesheet" />
    <script src="../../../../Scripts/sweetalert.min.js"></script>
    <link href="../../../../Styles/sweetalert.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
    <link href="../../../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../../Bootstrap/js/bootstrap.min.js"></script>
    <style>
        body {
            background-image: url('../../imagenes/fondoRegistroM.png.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <form runat="server">
        <div class="bg-img" style="background: rgba(0,0,0,0.3);">
            <div class="content" style="background: rgb(120 110 110 / 61%);">
                <header style="color: #aeb0b7e0;">Registra Tu mascota</header>
                <br />
                <div class="field space">
                    <span class="bi bi-buildings-fill"></span>
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
                <br />
                <div class="field space">
                    <span class="fa fa-user"></span>
                    <asp:TextBox ID="txtPrecio" CssClass="quitarmargen" required="" placeholder="Precio" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />
                <div class="field space">
                    <span class="fa fa-user"></span>
                    <asp:TextBox ID="txtGenero" CssClass="quitarmargen" required="" placeholder="Genero" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />


                <br />
                <asp:FileUpload ID="FlFotoM" runat="server" CssClass="field space" />
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
    </form>

    <script src="../../../Bootstrap/js/bootstrap.min.js"></script>
</asp:Content>

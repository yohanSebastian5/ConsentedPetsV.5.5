<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/PetShop/PetShop.Master" AutoEventWireup="true" CodeBehind="RegistrarProducto.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.PetShop.RegistrarProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="../../css/RegistrarProducto.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <div class="container">
        <div class="welcome">
            <div class="pinkbox">
                <div class="signup nodisplay">
                    <h1>Producto</h1>
                    <form autocomplete="off">
                        <input type="text" placeholder="username">
                        <input type="email" placeholder="email">
                        <input type="password" placeholder="password">
                        <input type="password" placeholder="confirm password">
                        <button class="button submit">Registrar Producto </button>
                    </form>
                </div>
                <div class="signin">
                    <h1>Categoria</h1>
                    <form class="more-padding" autocomplete="off">
                        <input type="text" placeholder="username">
                        <input type="password" placeholder="password">
                        

                        <button class="button submit">Registrar Categoria</button>
                    </form>
                </div>
            </div>
            <div class="leftbox">
                <h2 class="title"><span>Consented</span><br>
                    Pets</h2>
                <p class="desc">Ofrece Tus <span>Productos</span></p>
                <img class="flower smaller" src="../../../imagenes/logo.png" alt="1357d638624297b" border="0">
                <p class="account">Registra Tus Categorias</p>
                <button class="button" id="signin">Categorias</button>
            </div>
            <div class="rightbox">
                <h2 class="title"><span>Consented</span><br>
                    Pets</h2>
                <p class="desc">Ofrece Tus <span>Categorias</span></p>
                <img class="flower" src="../../../imagenes/logo.png" />
                <p class="account">Registrar Tus Productos</p>
                <button class="button" id="signup">Productos</button>
            </div>
        </div>
    </div>


    <!-- partial -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
    <script src="../../js/RegistrarProducto.js"></script>
</asp:Content>

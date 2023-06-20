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

                    <form autocomplete="off" runat="server">
                        <asp:Image ID="Image1" src="../../../imagenes/logoimg.png" runat="server" Style="border-radius: 52%; width: 130px; height: 130px;" />
                        <input type="text" id="txtNombre" runat="server" placeholder="Nombre">
                        <input type="text" id="txtPrecio" runat="server" placeholder="Precio">
                        <asp:DropDownList AutoPostBack="false" ID="ddlCategoria" runat="server"></asp:DropDownList>
                        <asp:FileUpload ID="FileUpload1"  onchange="cargar(this)" runat="server" />
                        <textarea id="txtDescripcion" runat="server" style="height: 100px; width: 210px;" placeholder="Descripcion" textmode="MultiLne" type="text"></textarea>
                        <button class="button submit" id="btnRegistrarProducto" runat="server">Registrar Producto </button>
                        <asp:Button ID="Button" style="display:none" runat="server" Text="Button" OnClick="Button_Click" />
                    </form>
                </div>
                <div class="signin">
                    <br />
                    <br />
                    <h1>Categoria</h1>
                    <br />
                    
                    <form class="more-padding" autocomplete="off">
                        <br />
                        <input type="text" id="txtNombreC" placeholder="Nombre" runat="server">
                        <br />
                        
                        <textarea id="txtDescripcionC" runat="server" style="height: 100px; width: 210px;" placeholder="Descripcion" textmode="MultiLne" type="text"></textarea>
                        <br />
                        <button id="btnRegistrarCategoria" runat="server" onclick="activarBoton()" class="button submit">Registrar Categoria</button>
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

    <script>
        function cargar(input) {
            console.log('cae');
            if (input.files[0]) {
                var img = new FileReader();
                console.log('caer');
                img.onload = function (e) {
                    document.getElementById("<%= Image1.ClientID %>").src = e.target.result;
                    console.log(e.target.result);
                };
                img.readAsDataURL(input.files[0]);
            }
        }
        function activarBoton() {
            // Obtiene una referencia al botón
            var boton = document.getElementById('<%= Button.ClientID %>');

            // Simula el clic en el botón
            if (boton) {
                boton.click();
            }
        }
    </script>
    <!-- partial -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
    <script src="../../js/RegistrarProducto.js"></script>
</asp:Content>

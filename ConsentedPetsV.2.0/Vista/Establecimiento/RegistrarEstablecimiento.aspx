<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarEstablecimiento.aspx.cs" Inherits="ConsentedPets.Vista.Veterinaria.RegistrarVeterinaria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Css/RegistrarV.css" rel="stylesheet" />
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
        body {
            background-image: url('../imagenes/fondoRegistrar.jpg');

            background-size: cover;
            background-repeat: no-repeat;
        }
        .quitarmargen{
            margin:0 0 0 0;
        }
    </style>
</head>
<body>
    <div class="bg-img">
        <div class="content">
            <header>Registra Tu Establecimiento</header>
            <br />
            <form id="form1" runat="server">
                <div class="field space">
                    <span class="fa fa-user"></span>
                    <asp:TextBox CssClass="quitarmargen"  ID="txtNombre" required="" placeholder="Nombre" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />
                <div class="field space">
                    <span class="fa fa-user"></span>
                    <asp:TextBox CssClass="quitarmargen" ID="txtDireccion" required="" placeholder="Direccion" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />
                <div class="field space">
                    <span class="fa fa-user"></span>
                    <asp:TextBox CssClass="quitarmargen" ID="txtTelefono" required="" placeholder="Telefono" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />
                <div class="field space">
                    <span class="fa fa-user"></span>
                    <asp:TextBox ID="txtEmail" CssClass="quitarmargen" required="" placeholder="Email" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                </div>
                <br />
                <asp:DropDownList ID="ddlTipo" runat="server" CssClass="field space"></asp:DropDownList>

                <%--  <div class="field space">
                    <span class="fa fa-user"></span>
                                     
                </div>--%>
                <br />
                <asp:FileUpload ID="FlImagenV" runat="server" CssClass="field space" />

                <br />
                <br />
                <div class="field">
                    <asp:Button ID="btnRegistrar" CssClass="quitarmargen" runat="server" Text="REGISTRAR" OnClick="btnRegistrar_Click" />
                </div>
            </form>
        </div>
    </div>
    <script src="../Bootstrap/js/bootstrap.min.js"></script>
</body>
</html>

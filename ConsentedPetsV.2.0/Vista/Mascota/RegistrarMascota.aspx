<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarMascota.aspx.cs" Inherits="ConsentedPets.Vista.Mascota.RegistrarMascota" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Css/RegistrarV.css" rel="stylesheet" />
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
        body {
            background-image: url('../imagenes/fondoRegistroM.png.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }
         .quitarmargen{
            margin:0 0 0 0;
            
        }
         .quitarmargen::placeholder{
             color:white;
         }
    </style>
    <title></title>
</head>
<body>
    <div class="bg-img" style="background: rgba(0,0,0,0.3);">
        <div class="content" style="background: rgb(120 110 110 / 61%);">
            <header style="color: #aeb0b7e0;">Registra Tu mascota</header>
            <br />
            <form id="form1" runat="server">
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
            </form>
        </div>
    </div>
    <script src="../Bootstrap/js/bootstrap.min.js"></script>
</body>
</html>

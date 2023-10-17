<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarContraseña.aspx.cs" Inherits="ConsentedPetsV._2._0.RecuperarContraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Consented Pets</title>
    <link href="Vista/Css/RecuperarContraseña.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
</head>
<body style="display: flex; justify-content: center; align-items: center; height: 800px;">
    <form id="form1" runat="server">
        <div class="form container" runat="server">
            <span class="title">¿Olvidaste tu contraseña?</span>
            <p class="description">Ingresa el correo con el que inicias sesión para enviarte una nueva contraseña.</p>
            <asp:Label ID="lblMensaje" runat="server" CssClass="mensaje"></asp:Label><br />
            <div>
                <asp:TextBox placeholder="Correo electronico" type="email" ID="txtEmail" runat="server" />
                <asp:Button ID="btnRecuperar" runat="server" CssClass="button" Text="Recuperar" OnClick="btnRecuperar_Click" />
                <%--<button type="submit" id="btnRecuperar" runat="server" onserverclick="btnRecuperar_ServerClick">Recuperar</button>--%>
            </div>
        </div>
    </form>
</body>
</html>

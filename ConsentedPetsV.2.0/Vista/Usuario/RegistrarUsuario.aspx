<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarUsuario.aspx.cs" Inherits="ProcsosAparteProyecto.RegistrarUsuario" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title></title>
    <link href="StyleU/Style.css" rel="stylesheet" />
</head>
<body style="background: #ed940ca1;">
    <%--<section class="login">--%>
    <div class="login_box">
        <div class="left">
            <div class="top_link">
                <a href="../../Principal.aspx">
                   <img src="https://drive.google.com/u/0/uc?id=16U__U5dJdaTfNGobB_OpwAJ73vM50rPV&export=download" alt=""></a>
            </div>
            <div class="contact">
                <form runat="server">
                    <h3>Registrarse</h3>
                    <asp:TextBox ID="txtDocumento" runat="server" placeholder="Documento"></asp:TextBox>
                    <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre"></asp:TextBox>
                    <asp:TextBox ID="txtApellido" runat="server" placeholder="Apellido"></asp:TextBox>
                    <asp:TextBox ID="txtTelefono" runat="server" placeholder="Telefono"></asp:TextBox>
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                    <asp:FileUpload ID="FlImagenU" runat="server" />
                    <asp:TextBox ID="txtDireccion" runat="server" placeholder="Direccion"></asp:TextBox>
                    <asp:TextBox ID="txtGenero" runat="server" placeholder="Genero"></asp:TextBox>
                    <asp:TextBox ID="txtContraseña" runat="server" placeholder="Contraseña"></asp:TextBox>


                    <button runat="server" id="btnRegistrar" class="submit">Registrar</button>
<%--                    <asp:Button ID="btnRegistrar" class="submit" runat="server" Text="Registrar" />--%>
                </form>
            </div>
            
        </div>
        <div class="right">
            <div class="right-text">
                <h2>Consented Pets</h2>
                <h5>Encuentra todo lo que buscas en un solo Lugar</h5>
            </div>
            <div class="right-inductor">
                <img src="https://lh3.googleusercontent.com/fife/ABSRlIoGiXn2r0SBm7bjFHea6iCUOyY0N2SrvhNUT-orJfyGNRSMO2vfqar3R-xs5Z4xbeqYwrEMq2FXKGXm-l_H6QAlwCBk9uceKBfG-FjacfftM0WM_aoUC_oxRSXXYspQE3tCMHGvMBlb2K1NAdU6qWv3VAQAPdCo8VwTgdnyWv08CmeZ8hX_6Ty8FzetXYKnfXb0CTEFQOVF4p3R58LksVUd73FU6564OsrJt918LPEwqIPAPQ4dMgiH73sgLXnDndUDCdLSDHMSirr4uUaqbiWQq-X1SNdkh-3jzjhW4keeNt1TgQHSrzW3maYO3ryueQzYoMEhts8MP8HH5gs2NkCar9cr_guunglU7Zqaede4cLFhsCZWBLVHY4cKHgk8SzfH_0Rn3St2AQen9MaiT38L5QXsaq6zFMuGiT8M2Md50eS0JdRTdlWLJApbgAUqI3zltUXce-MaCrDtp_UiI6x3IR4fEZiCo0XDyoAesFjXZg9cIuSsLTiKkSAGzzledJU3crgSHjAIycQN2PH2_dBIa3ibAJLphqq6zLh0qiQn_dHh83ru2y7MgxRU85ithgjdIk3PgplREbW9_PLv5j9juYc1WXFNW9ML80UlTaC9D2rP3i80zESJJY56faKsA5GVCIFiUtc3EewSM_C0bkJSMiobIWiXFz7pMcadgZlweUdjBcjvaepHBe8wou0ZtDM9TKom0hs_nx_AKy0dnXGNWI1qftTjAg=w1920-h979-ft" alt="">
            </div>
        </div>
    </div>
    <%--	</section>--%>
</body>
</html>

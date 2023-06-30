<%@ Page Title="" Language="C#"  EnableEventValidation="false" MasterPageFile="~/Vista/PerfilesRol/Usuario/PerfilUsuario.Master" AutoEventWireup="true" CodeBehind="EditarPerfil.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Usuario.EditarPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Css/EditarPerfilUsuario.css" rel="stylesheet" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="../../../Styles/sweetalert.css" rel="stylesheet" />
    <script src="../../../Scripts/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">


    
    <!------ Include the above in your HEAD tag ---------->

    <div class="container emp-profile">
        <form >
            <div class="row">

                <div class="col-md-6">
                    <div class="profile-head">
                        
                                <h5 id="nom" runat="server"><%#Eval("nombre")%></h5>
                           

                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                        </ul>
                    </div>
                </div>

                <div class="col-md-2">
                    <asp:Button runat="server" type="submit" class="profile-edit-btn" Text="Edit Porfil" name="btnAddMore" value="Edit Profile" OnClick="btnAddMore_Click"/>
                    <%--<input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile" OnClick="btnAddMore_Click"/>--%>
                </div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-4">
                    <div class="profile-img">
                        
                        <img id="img" runat="server" />
                        <div class="file btn btn-lg btn-primary">
                            Change Photo
                               
                             <asp:FileUpload ID="FlImagenV" onchange="cargar(this)" runat="server" CssClass="field space" />
                        </div>
                    </div>

                </div>
                <div class="col-md-8">
                    <div class="tab-content profile-tab" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <div class="row">
                                <div class="col-md-6">
                                    <label style="color: blue">NOMBRE:</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre"></asp:TextBox>

                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6">
                                    <label style="color: blue">APELLIDO:</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtApellido" runat="server" placeholder="Apellido"></asp:TextBox>

                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6">
                                    <label style="color: blue">GENERO:</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtGenero" runat="server" placeholder="Genero"></asp:TextBox>

                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6">
                                    <label style="color: blue">TELEFONO:</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtTelefono" runat="server" placeholder="Teléfono"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6">
                                    <label style="color: blue">EMAIL:</label>
                                </div>

                                <div class="col-md-6">
                                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6">
                                    <label style="color: blue">DIRECCION:</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtDireccion" runat="server" placeholder="Dirección"></asp:TextBox>

                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-6">
                                    <label style="color: blue">CONTRASEÑA:</label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtContraseña" runat="server" placeholder="Contraseña"></asp:TextBox>

                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Experience</label>
                                </div>
                                <div class="col-md-6">
                                    <p>Expert</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Hourly Rate</label>
                                </div>
                                <div class="col-md-6">
                                    <p>10$/hr</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Total Projects</label>
                                </div>
                                <div class="col-md-6">
                                    <p>230</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>English Level</label>
                                </div>
                                <div class="col-md-6">
                                    <p>Expert</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Availability</label>
                                </div>
                                <div class="col-md-6">
                                    <p>6 months</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label>Your Bio</label><br />
                                    <p>Your detail description</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <script>
        function cargar(input) {
            console.log('cae');
            if (input.files[0]) {
                var img = new FileReader();
                console.log('caer');
                img.onload = function (e) {
                    document.getElementById("<%= img.ClientID %>").src = e.target.result;
                           console.log(e.target.result);
                       };
                       img.readAsDataURL(input.files[0]);
                   }



               }
        </script>
    </div>

</asp:Content>

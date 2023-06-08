<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Usuario/PerfilUsuario.Master" AutoEventWireup="true" CodeBehind="EditarPerfil.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Usuario.EditarPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">


    <link href="../../Css/EditarPerfilUsuario.css" rel="stylesheet" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <div class="container emp-profile">
        <form method="post">
            <div class="row">

                <div class="col-md-6">
                    <div class="profile-head">
                        <asp:Repeater ID="repNom" runat="server">
                            <ItemTemplate>
                                <h5><%#Eval("nombre")%></h5>
                            </ItemTemplate>
                        </asp:Repeater>

                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                        </ul>
                    </div>
                </div>

                <div class="col-md-2">
                    <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile" />
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
                               
                            <input type="file" name="file" />
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
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/PerfilesRol/Administrador/PetShop/PetShop.Master" AutoEventWireup="true" CodeBehind="RegistrarVendedor.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PerfilesRol.Administrador.PetShop.RegistrarVendedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeadAdministrador" runat="server">
    <link href="../../css/AgregarVeter.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
    <link href="../../../../Styles/sweetalert.css" rel="stylesheet" />
    <link href="../../../Css/AgregarVeter.css" rel="stylesheet" />
    <script src="../../../../Scripts/sweetalert.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        .search-button {
            background-color: #ea8c32;
            border: none;
            color: white;
            padding: 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            margin-top: 50px
        }
        .color{
            color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBodyAdministrador" runat="server">
    <div style="align-items: center; display: flex; justify-content: center;">
        <form runat="server">
            <h2 class="text-center color m-2">Agregar Vendedor</h2>
            <asp:TextBox ID="txtBuscar" CssClass="text color" placeholder="Buscar Usuario" runat="server"></asp:TextBox>
        </form>
        <button id="btnBuscar" type="button" value="button" class="search-button"><i class="fas fa-search"></i></button>
        <%--        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
        <div id="Datos" runat="server" class="login-box" style="display: none">
            <form>
                <div id="nombreDiv" class="user-box">
                    <input type="text" id="txtNombre" runat="server" />
                    <label name="" required="">Nombre:</label>
                </div>
                <div id="apellidoDiv" class="user-box">
                    <input type="text" id="txtApellido" runat="server" />
                    <label name="" required="">Apellido:</label>
                </div>
                <div id="emaildiV" class="user-box">
                    <input type="text" id="txtEmail" runat="server" />
                    <label name="" required="">Email:</label>
                </div>
                <div id="expeDiv" class="user-box">
                    <input type="text" id="txtExperi" required="" runat="server" />
                    <label name="" required="">Experiencia:</label>
                </div>

                <div id="espeDiv" class="user-box">
                    <input type="text" id="txtEspeci" required="" runat="server" />
                    <label name="" required="">Especializacion:</label>
                </div>
                <div id="profesionDiv" class="user-box">

                    <input type="text" id="txtProfesion" required="" runat="server" />
                    <label name="" required="">Profesion:</label>
                </div>
                <%--                <input id="btnActualizar" type="button" value="Actualizar" />--%>
                <a href="#" id="btnActualizar">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    Actualizar
                </a>
            </form>
        </div>


    </div>
    <script>
        function cargardatos(buscar) {
            $.ajax({
                type: "POST",
                url: "RegistrarVendedor.aspx/cargardatos",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ docum: buscar }),
                success: function (dat) {
                    var objUsuE = dat.d;
                    console.log(objUsuE);
                    document.getElementById('<%= txtNombre.ClientID %>').value = objUsuE.nombre;
                    document.getElementById('<%= txtApellido.ClientID %>').value = objUsuE.apellido;
                    document.getElementById('<%= txtEmail.ClientID %>').value = objUsuE.email;
                    document.getElementById('<%= txtExperi.ClientID %>').value = objUsuE.experiencia;
                    document.getElementById('<%= txtEspeci.ClientID %>').value = objUsuE.especializacion;
                    document.getElementById('<%= txtProfesion.ClientID %>').value = objUsuE.profesion;
                }, error: function (xhr, textStatus, errorThrown) {
                    // Manejar cualquier error que ocurra durante la llamada AJAX
                    console.error(errorThrown);
                }

            });
        }
        function ActualizarDatos(buscar, espe, expe, prof) {
            $.ajax({
                type: "POST",
                url: "RegistrarProfesor.aspx/ActualizarDatos",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                data: JSON.stringify({ docum: buscar, espes: espe, expes: expe, profes: prof }),

                success: function (dat) {
                    var objUsuE = dat.d;
                    swal('¡Realizado!', 'Profesor Registrado', 'success');
                    console.log(objUsuE);
                    console.log(espe);
                }, error: function (xhr, textStatus, errorThrown) {
                    // Manejar cualquier error que ocurra durante la llamada AJAX
                    console.error(errorThrown);
                }

            });

        }
        $('#btnBuscar').click(function () {
            var valor = document.getElementById('<%= txtBuscar.ClientID %>').value;
            mostrarDiv();
            cargardatos(valor);
        });
        $('#btnActualizar').click(function () {

            var valor = document.getElementById('<%= txtBuscar.ClientID %>').value;
            var espe = document.getElementById('<%= txtEspeci.ClientID %>').value;
            var expe = document.getElementById('<%= txtExperi.ClientID %>').value;
            var profe = document.getElementById('<%= txtProfesion.ClientID %>').value;
            console.log(profe);
            ActualizarDatos(valor, espe, expe, profe);

        });

        function obtenerValorTextBox() {
            var valor = document.getElementById('<%= txtBuscar.ClientID %>').value;
            console.log(valor);
            // Haz algo con el valor obtenido


            // Realizar solicitud AJAX
            $.ajax({
                url: 'RegistrarProfesor.aspx/ProcesarValor',
                type: 'POST',
                data: JSON.stringify(valor),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    // Manejar la respuesta del servidor si es necesario
                },
                error: function () {
                    // Manejar errores si es necesario
                }
            });

        }

        function mostrarDiv() {
            var div = document.getElementById('<%= Datos.ClientID %>');
            div.style.display = 'block';
        }

    </script>
</asp:Content>

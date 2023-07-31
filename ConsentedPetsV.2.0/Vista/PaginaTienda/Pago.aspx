
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pago.aspx.cs" Inherits="ConsentedPetsV._2._0.Vista.PaginaTienda.Pago" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

    <script
        src="https://www.paypal.com/sdk/js?client-id=ASExf15cLQJMARs70Rx1QcatRbJXR4q2JC_IOBqcXisP27TqDCqXgH99--1cnBB9MCoIt-QKZdOiXctX"></script>
    <link href="assets/css/pago.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body style="margin: 25px">
    <form id="form1" runat="server">
        <div>
            <!-- Image and text -->
            <nav class="navbar navbar-light" style="background-color: #f8d8d8;">
                <a class="navbar-brand" href="#">
                    <img src="Vista/Imagenes/Carrito_preview_rev_1.png" width="130" height="100" class="d-inline-block align-top" alt="" /> </a>
                <p class="fuente">SATURN SHOP</p>
                <asp:Button class="btn-volver" ID="volver" runat="server" Text="Volver" onclick="volver_Click"></asp:Button>
            </nav>
        </div>

        <section class="section">
            <h1>Carrito de Compras</h1>

            <table>
                <thead>
                    <tr>
                        <th>Imagen</th>
                        <th>Nombre</th>
                        <th>Cantidad</th>
                        <th>Precio</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="image-cell">
                            <img src="Vista/Imagenes/camisa-jeans.jpg" alt="Producto 1" /></td>
                        <td>Camisa de jean</td>
                        <td>2</td>
                        <td>$10.00</td>
            </tr>
            <tr>
                <td class="image-cell"><img src="Vista/Imagenes/nuevo-par-zapatillas-blancas-aislado-blanco.jpg" alt="Producto 2"/></td>
                <td>Tenis blancos</td>
                <td>1</td>
                <td>$15.00</td>
            </tr>
            <tr>
                <td/ class="image-cell"><img src="Vista/Imagenes/pantalones.jpg" alt="Producto 3"/></td>
                <td>Jean azul claro</td>
                <td>3</td>
                <td>$20.00</td>
            </tr>
        </tbody>
                <tfoot>
                    <tr>
                        <td colspan="3" class="total">Total:</td>
                        <td id="valor">$45.00</td>
                        <label id="valorTotal" style="display: none;">45.00</label>
                    </tr>
                </tfoot>
            </table>
        </section>
        <br />
        <section>
            <div id="paypal-button-container"></div>
            <table id="paymentTable" style="display:none;">
                <tr>
                    <th>Nombre del campo</th>
                    <th>Valor</th>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td id="nameField"></td>
                </tr>
                <tr>
                    <td>Correo electrónico</td>
                    <td id="emailField"></td>
                </tr>
            </table>
            <div id="successMessage" style="display:none";>
                ¡Pago Exitoso! El pago ha sido realizado con éxito.
            </div>
            <div id="cancelMessage" style="display:none";>
                ¡Pago Cancelado! El pago ha sido cancelado.
            </div>
            <h1>Datos en formato JSON</h1>
            <div id="paymentDetails"></div>
            <script>
                paypal.Buttons({
                    style: {
                        color: 'blue',
                        shape: 'pill',
                        label: 'pay'
                    },
                    createOrder: function (data, actions) {
                        var total = document.getElementById('valorTotal').textContent;
                        return actions.order.create({
                            purchase_units: [{
                                amount: {
                                    value: total
                                }
                            }]
                        });
                    },
                    onApprove: function (data, actions) {
                        swal("¡Pago aprobado!", "El pago ha sido realizado con éxito.", "success")
                        return actions.order.capture().then(function (details) {
                            document.getElementById('paymentDetails').textContent = JSON.stringify(details, null, 2);
                            document.getElementById('nameField').textContent = details.payer.name.given_name + ' ' + details.payer.name.surname;
                            document.getElementById('emailField').textContent = details.payer.email_address;
                            document.getElementById('paymentTable').style.display = 'table';
                            document.getElementById('successMessage').style.display = 'block';
                            console.log(details);
                        });
                    },
                    OnCancel: function (data) {
                        swal("¡Pago Cancelado!", "El pago ha sido cancelado.", "error");
                        document.getElementById('cancelMessage').style.display = 'block';
                        console.log(data);
                    }
                }).render('#paypal-button-container');
            </script>
        </section>
    </form>
</body>
</html>

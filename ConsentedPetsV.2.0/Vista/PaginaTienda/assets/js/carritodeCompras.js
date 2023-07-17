let carrito = [];

function agregarAlCarrito(productojson) {

    var productos = JSON.parse(productojson);
    carrito.push(productos);
    carrrito();
    GuardarProductosLS();
    actualizarCarrito();

}

function GuardarProductosLS() {
    var cartjson = JSON.stringify(carrito);
    localStorage.setItem('carritoProductos',cartjson)


}

function cargarProductosLS() {
    if (localStorage.getItem('carritoProductos')) {
        var cartJson = localStorage.getItem('carritoProductos');
        carrito = JSON.parse(cartJson);


    }


}

cargarProductosLS();

function actualizarCarrito() {
    var carritoElem = document.getElementById('carritoProductos')
    carritoElem.innerHTML = '';

    var total = 0;



    if (carrito === 0) {
        carritoElem.innerHTML = '<p>Carrito Esta Mas solo que Karol</p>';
    } else {
        carrito.forEach(function (producto,indice) {
            var idProduct = producto[0].idProducto;
            var image = producto[0].Imagen;
            var nombre = producto[0].Nombre;
            var precio = producto[0].Precio;
            var descripcion = producto[0].Descripcion;

            var productoContent = document.createElement('div');
            productoContent.innerHTML = `
            <img src="${image}"/>
            <h5>${nombre}</h5>
            <p>Precio: ${precio}</p>
            <p>Descripcion: ${descripcion}</p>
            <button class="eliminarProducto btn btn-danger" data-indice="${indice}">Eliminar</button>
            <hr>
            `;
            carritoElem.appendChild(productoContent);

            total += parseFloat(producto[0].Precio);    
        });

        const totally = document.createElement("div");
        totally.innerHTML = `<p> Total a Pagar: ${total.toFixed(2)}</p>`;
        carritoElem.append(totally);
        var botonEliminar = document.getElementsByClassName(`eliminarProducto`);
        Array.from(botonEliminar).forEach(function (btnEliminar) {
            btnEliminar.addEventListener('click', function () {
                var indice = parseInt(this.getAttribute('data-indice'), 10);
                eliminarProducto(indice);


            });



        });


        GuardarProductosLS();


    }

}

function eliminarProducto(indice) {
    if (indice>=0 && indice<carrito.length) {
        carrito.splice(indice, 1);
        actualizarCarrito();
        GuardarProductosLS();
    }
}



function vaciarCarrito() {
    carrito = [];
    actualizarCarrito();

    localStorage.removeItem('carritoProductos')

} 

document.getElementById("btnAbrirModal").addEventListener('click', function () {
    actualizarCarrito();
});

const countCarrito = document.getElementById("count");
const carrrito = () => {
    countCarrito.style.display = "block";
    countCarrito.innerText = carrito.length;

}
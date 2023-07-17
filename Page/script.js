// script.js

document.getElementById("formulario").addEventListener("submit", function (event) {
    var nombre = document.getElementById("nombre").value.trim();
    var email = document.getElementById("email").value.trim();
    var contrasena = document.getElementById("contrasena").value.trim();
    var telefono = document.getElementById("telefono").value.trim();
    var edad = document.getElementById("edad").value.trim();
    var genero = document.getElementById("genero").value;
    var pais = document.getElementById("pais").value;
    var comentarios = document.getElementById("comentarios").value.trim();
    var aceptarTerminos = document.getElementById("aceptar_terminos").checked;

    // Validaciones
    if (nombre.length < 3 || nombre.length > 50) {
        alert("El nombre debe tener entre 3 y 50 caracteres.");
        event.preventDefault();
        return;
    }

    if (!/^[a-zA-Z\s]+$/.test(nombre)) {
        alert("El nombre solo debe contener caracteres alfabéticos.");
        event.preventDefault();
        return;
    }

    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
        alert("Por favor, ingresa un email válido.");
        event.preventDefault();
        return;
    }

    if (contrasena.length < 6 || contrasena.length > 20) {
        alert("La contraseña debe tener entre 6 y 20 caracteres.");
        event.preventDefault();
        return;
    }

    if (!/^\d{3}-\d{3}-\d{4}$/.test(telefono)) {
        alert("Por favor, ingresa un número de teléfono válido (formato: xxx-xxx-xxxx).");
        event.preventDefault();
        return;
    }

    if (edad < 18 || edad > 99) {
        alert("La edad debe estar entre 18 y 99 años.");
        event.preventDefault();
        return;
    }

    if (!genero) {
        alert("Por favor, selecciona tu género.");
        event.preventDefault();
        return;
    }

    if (!pais) {
        alert("Por favor, selecciona tu país.");
        event.preventDefault();
        return;
    }

    if (!aceptarTerminos) {
        alert("Debes aceptar los términos y condiciones.");
        event.preventDefault();
        return;
    }

    // El formulario es válido, se puede enviar
});

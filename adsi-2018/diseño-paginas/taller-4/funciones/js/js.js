var numero = prompt("Introduce un número entero");

var resultado = parImpar(numero);
document.write("<h1>"+"El número " + numero + " es " + resultado+"</h1>");

function parImpar(numero) {
    if (numero % 2 == 0) {
        return "par";
    }
    else {
        return "impar";
    }
}

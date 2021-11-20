function ejercicio1(){
    nomPer1 = document.getElementById('nomPer1').value;
    nomPer2 = document.getElementById('nomPer2').value;
    nomPer3 = document.getElementById('nomPer3').value;

    edadPer1 = document.getElementById('edadPer1').value;
    edadPer2 = document.getElementById('edadPer2').value;
    edadPer3 = document.getElementById('edadPer3').value;

    if (edadPer1>edadPer2 && edadPer1>edadPer3) {
        alert("Persona: "+nomPer1+" es de mayor edad");
    }
    if (edadPer2 > edadPer3 && edadPer2 > edadPer1) {
        alert("Persona: " + nomPer2 + " es de mayor edad");
    }
    if (edadPer3 > edadPer1 && edadPer3 > edadPer2) {
        alert("Persona: " + nomPer3 + " es de mayor edad");
    }
} 

function ejercicio2() {
    $hora = parseInt(document.getElementById('hora').value);
    $seleccion = document.getElementById('seleccion').value;

    if ($seleccion == 1) {
        $salario=$hora*8000;
        alert("Salario es: " +$salario);
    }
    if ($seleccion == 2) {
        $salario = $hora * 5000;
        alert("Salario es: " + $salario);
    }
    if ($seleccion == 3) {
        $salario = $hora * 2500;
        alert("Salario es: " + $salario);
    }
}

function ejercicio3() {
    $sueldo = parseInt(document.getElementById('num_saldo').value);

    if ($sueldo<=560000) {
        $Des= $sueldo*0.15;
        $salNeto = $sueldo-$Des;

        alert("Descuento es: " + $Des +'\n'+"Saldo Neto es: "+$salNeto);

    } else if ($sueldo >= 560000 && $sueldo <= 1000000) {
        $Des = $sueldo * 0.10;
        $salNeto = $sueldo - $Des;

        alert("Descuento es: " + $Des + '\n' + "Saldo Neto es: " + $salNeto);

    } else if ($sueldo >1000000) {
        $Des = $sueldo * 0.05;
        $salNeto = $sueldo - $Des;

        alert("Descuento es: " + $Des + '\n' + "Saldo Neto es: " + $salNeto);
    } 
}

function ejercicio4() {
    $nom = document.getElementById('txt_nom').value;
    $edad = parseInt(document.getElementById('num_edad').value);
    $f = document.getElementById('rad_sexF').value;

    if (document.getElementById('rad_sexM').checked=true && $edad>=18) {
        alert("Bienvenido");
    } else if (document.getElementById('rad_sexF').checked = true && $edad < 18) {
        alert($nom);
    }
}

function ejercicio5() {
    var $monto=300000;
    var $klm=document.getElementById('num_kre').value;
    
    if ($klm>=300 && $klm<=1000){
        $montoImp=15000*($klm-300);
        $tot=$montoImp+$monto;
        alert("Monto Impuesto: " + $montoImp +"\n"+" Pago Alquiler: "+$tot);
    }else{
        alert("sfsdfsdf");
    }
}
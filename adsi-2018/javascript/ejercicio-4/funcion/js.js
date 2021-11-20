
// Crea Funcion (nombre igual al onclick del boton)
function sumar(){
  //Obtenemos los datos por medio del id de los inputs
    Num1=document.getElementById('num_nro1').value;
    Num2=document.getElementById('num_nro2').value;
    suma=parseInt(Num1)+parseInt(Num2);

    document.getElementById('txt_res').value=suma;

}
// Crea Funcion (nombre igual al onclick del boton)
function restar(){
  //Obtenemos los datos por medio del id de los inputs
  Num1=document.getElementById('num_nro1').value;
  Num2=document.getElementById('num_nro2').value;
  resta=parseInt(Num1)-parseInt(Num2);

  document.getElementById('txt_res').value=resta;
}
// Crea Funcion (nombre igual al onclick del boton)
function multiplicar(){
  //Obtenemos los datos por medio del id de los inputs
  Num1=document.getElementById('num_nro1').value;
  Num2=document.getElementById('num_nro2').value;
  multiplicar=parseInt(Num1)*parseInt(Num2);

  document.getElementById('txt_res').value=multiplicar;

}
// Crea Funcion (nombre igual al onclick del boton)
function dividir(){
  //Obtenemos los datos por medio del id de los inputs
  Num1=document.getElementById('num_nro1').value;
  Num2=document.getElementById('num_nro2').value;
  dividir=parseFloat(Num1)/parseFloat(Num2);

  document.getElementById('txt_res').value=dividir;

}

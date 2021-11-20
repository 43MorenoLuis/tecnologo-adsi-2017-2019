
// Crea Funcion (nombre igual al onclick del boton)
function mostrar(){
  //Obtenemos los datos por medio del id de los inputs
  Texto=document.getElementById('txt_texto').value;
  Num=document.getElementById('num_nro').value;

  for (var i = 1; i <= Num; i++) {
    alert("Vuelta "+i+"\n"+Texto);
  }

}

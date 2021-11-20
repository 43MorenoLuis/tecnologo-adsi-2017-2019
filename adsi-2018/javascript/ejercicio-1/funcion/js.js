
var prom=0;
// Crea Funcion (nombre igual al onclick del boton)
function mostrar(){
  //Obtenemos los datos por medio del id de los inputs
  Num1=document.getElementById('Nota1').value;
  Num2=document.getElementById('Nota2').value;
  Num3=document.getElementById('Nota3').value;

  //Sacar promedio
	prom=(parseFloat(Num1)+parseFloat(Num2)+parseFloat(Num3))/3;
 if(prom>=3.5){
   alert('Paso la materia'+'\n'+'Promedio:' + prom);
 }
  alert('Perdio la materia'+'\n'+'Promedio:' + prom);
}

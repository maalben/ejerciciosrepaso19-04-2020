Proceso factorialEnVectorNPosiciones
	
	//Realizar un algoritmo que, dada una cantidad de n números no superiores a 10 se calcule
	//el factorial de cada uno de ellos.
	
	Definir num, vectorNumeros, factorial, vectorFactorial, contador, i como Numerico;
	Definir respuesta como Texto;
	
	Dimension vectorNumeros[1000000];
	Dimension vectorFactorial[1000000];
	contador = 0;
	
	
	respuesta = "S";
	
	Mientras respuesta = "S" Hacer
		
		Limpiar Pantalla;		
		
		Escribir "Ingresa el número ", contador + 1, " para calcular la factorial inferior a 10.";
		Leer num;
		
		Si num >= 11 Entonces
			
			Escribir "";
			Escribir "El valor ingresado no es válido.";
			
		SiNo
			
			vectorNumeros[contador] = num;
			
			factorial = 1;
			Para i = 1 hasta num Con Paso 1 Hacer
				factorial = factorial * i;
			FinPara
			
			vectorFactorial[contador] = factorial;
			
			contador = contador + 1;
			
		FinSi
		
		
		Escribir "";
		Escribir "";
		Escribir "S. Para agregar otro número?:";
		Escribir "N. Para ver los resultados";
		Leer respuesta;
		
		respuesta = Mayusculas(respuesta);
		
		Segun respuesta hacer
			
			"S":
				respuesta = "S";
				
			"N":
				respuesta = "N";
				
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "Opción incorrecta";
				
				
		FinSegun
		
	FinMientras
	
	Limpiar Pantalla;
	
	Escribir "De acuerdo a los valores ingresados se tiene:";
	Escribir "";
	Escribir "";
	
	Escribir "Número Ingresado    -    Factorial    ";
	Para i=0 hasta contador - 1 Con Paso 1 Hacer
		
		Escribir "  ", vectorNumeros[i], "        -     ", vectorFactorial[i];
		
	FinPara
	
	
FinProceso

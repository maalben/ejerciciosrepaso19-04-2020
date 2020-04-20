Proceso vectorNPosicionesPersonas
	
	//Realizar un algoritmo donde se solicite el nombre y la edad de una persona, donde
	//se tenga en cuenta que si la edad es superior o igual a 18 años, el sistema
	//deberá solicitar la estatura de la persona.
	//Si la persona es superior o igual a 180cm, se deberá guardar en un vector
	//el nombre, edad y estatura de la persona, siendo ésta apta para prestar servicio 
	//en la marina
	//Si la persona no es cumple con la estatura pero si con la edad, deberá guardarla
	//en otro vector con la información de nombre, edad y estatura la cual no seria apto.
	//De lo contrario, si no se cumple con la edad, deberá guardarse en otro vector
	//el nombre y la edad la cual son personas menores de edad.
	
	Definir nombre, vectorNombreAdmitido, vectorNombreNOAdmitido, vectorNombreMenorEdad, respuesta como Texto;
	Definir edad, vectorEdadAdmitido, vectorEdadNOAdmitido, vectorEdadMenores, estatura, vectorEstaturaAdmitido, vectorEstaturaNOAdmitido, contadorAdmitidos, contadorNOAdmitidos, contadorMenoresEdad, i como Numerico;
	
	Dimension vectorNombreAdmitido[1000000];
	Dimension vectorEdadAdmitido[1000000];
	Dimension vectorEstaturaAdmitido[1000000];
	
	Dimension vectorNombreNOAdmitido[1000000];
	Dimension vectorEdadNOAdmitido[1000000];
	Dimension vectorEstaturaNOAdmitido[1000000];
	
	Dimension vectorNombreMenorEdad[1000000];
	Dimension vectorEdadMenores[1000000];
	
	contadorAdmitidos = 0;
	contadorNOAdmitidos = 0;
	contadorMenoresEdad = 0;
	
	respuesta = "S";
	
	Mientras respuesta = "S" Hacer
		
		Limpiar Pantalla;
		
		Escribir "Ingreso a la Marina Colombiana";
		Escribir "";
		Escribir "";
		Escribir "Ingresa tu nombre";
		Leer nombre;
		
		Escribir "Ingresa la edad";
		Leer edad;
		
		Si edad >= 18 Entonces
			
			Escribir "Ingresa tu estatura en centímetros";
			Leer estatura;
			
			Si estatura >= 180 Entonces
				
				vectorNombreAdmitido[contadorAdmitidos] = nombre;
				vectorEdadAdmitido[contadorAdmitidos] = edad;
				vectorEstaturaAdmitido[contadorAdmitidos] = estatura;
				
				contadorAdmitidos = contadorAdmitidos + 1;
				
			SiNo
				
				vectorNombreNOAdmitido[contadorNOAdmitidos] = nombre;
				vectorEdadNOAdmitido[contadorNOAdmitidos] = edad;
				vectorEstaturaNOAdmitido[contadorNOAdmitidos] = estatura;
				
				contadorNOAdmitidos = contadorNOAdmitidos + 1;
				
			FinSi
			
		SiNo
			
			vectorNombreMenorEdad[contadorMenoresEdad] = nombre;
			vectorEdadMenores[contadorMenoresEdad] = edad;
			
			contadorMenoresEdad = contadorMenoresEdad + 1;
			
		FinSi
		
		Escribir "";
		Escribir "";
		Escribir "S. Para registrar otro aspirante.";
		Escribir "N. Para ver la lista de aspirante";
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
	Escribir "Listado de los aspirantes";
	Escribir "";
	Escribir "Aspirantes Admitidos";
	Escribir "Nombre      -       Edad    -       Estatura";
	Para i = 0 hasta contadorAdmitidos-1 con paso 1 Hacer
		Escribir vectorNombreAdmitido[i], "      -      ", vectorEdadAdmitido[i], "    -      ", vectorEstaturaAdmitido[i];
	FinPara
	
	Escribir "";
	Escribir "";
	Escribir "Aspirantes NO Admitidos por la estatura";
	Escribir "Nombre        -       Edad        -       Estatura";
	Para i = 0 hasta contadorNOAdmitidos-1 con paso 1 Hacer
		Escribir vectorNombreNOAdmitido[i], "      -      ", vectorEdadNOAdmitido[i], "    -    ", vectorEstaturaNOAdmitido[i];
	FinPara
	
	Escribir "";
	Escribir "";
	Escribir "Aspirantes Rechazados completamente por ser menores de edad";
	Escribir "Nombre      -       Edad        ";
	Para i = 0 hasta contadorMenoresEdad-1 con paso 1 Hacer
		Escribir vectorNombreMenorEdad[i], "      -      ", vectorEdadMenores[i];
	FinPara
	
	
FinProceso

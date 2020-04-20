Proceso simulacionBD
	
	
	Definir vectorCedula, cedula, i como Numerico;
	Definir vectorNombre, nombre, opcionMenuPrincipal, desicion como Texto;
	Definir menu, opcionCedula, opcionValida Como Logico;
	
	Dimension vectorCedula[2];
	Dimension vectorNombre[2];
	
	menu = Verdadero;
	
	Mientras menu = Verdadero Hacer
		
		Limpiar Pantalla;
		
		Escribir "Sistema de Información PQEK";
		Escribir "";
		Escribir "1. Ingresar Cédulas (2)";
		Escribir "2. Asociar Nombre de personas a Cédulas (2)";
		Escribir "3. Ver todos los registros";
		Escribir "4. Salir";
		Leer opcionMenuPrincipal;
		
		Segun opcionMenuPrincipal Hacer
			
			"1":  //Opcion Ingresar Cédulas
				
				Limpiar Pantalla;
				
				Escribir "Opción: INGRESO DE CÉDULAS";
				Escribir "";
				
				Para i=0 hasta 1 Con Paso 1 Hacer
					
					Escribir "Ingrese cédula # " , i+1;
					Leer cedula;
					
					vectorCedula[i] = cedula;
					
				FinPara
				
				Escribir "Se ha ingresado la información correctamente.";
				Escribir "";
				Escribir "Serás redireccionado al menú principal para registrar los nombres";
				Esperar 5 Segundos;
				
				menu = Verdadero;
				
			"2": //Asociar Nombre de personas a Cédulas
				
				opcionCedula = Verdadero;
				
				Mientras opcionCedula = Verdadero Hacer
					
					Limpiar Pantalla;
					
					Escribir "Opción: INGRESO DE NOMBRES DE PERSONAS";
					Escribir "";
					
					Escribir "Ingrese cédula a buscar: ";
					Leer cedula;
					
					Para i=0 hasta 1 Con Paso 1 Hacer
						
						Si vectorCedula[i] = cedula Entonces
							
							Escribir "Ingrese el nombre que le pertenece la cédula ingresada";
							Leer nombre;
							
							vectorNombre[i] = nombre;
							
						FinSi
						
					FinPara
					
					
					opcionValida = Verdadero;
					Mientras opcionValida = Verdadero Hacer
						
						Escribir "";
						Escribir "";
						Escribir "Qué desea hacer?:";
						Escribir "1. Buscar otra cédula.";
						Escribir "2. Menú principal.";
						Leer desicion;
						
						Segun desicion Hacer
							
							"1": 
								
								opcionCedula = Verdadero;
								opcionValida = falso;
								
							"2":
								
								opcionCedula = Falso;
								menu = Verdadero;
								opcionValida = falso;
								
							De Otro Modo:
								
								opcionValida = Verdadero;
								Escribir "Opción incorrecta. Intente de nuevo";
								Esperar 2 Segundos;
								
						FinSegun
						
					FinMientras
					
				FinMientras
				
			"3": //opcion Ver todos los registros
				
				Limpiar Pantalla;
				
				Escribir "Opción: VER TODOS LOS REGISTROS";
				Escribir "";
				
				Escribir "Listado de los registros guardados en el sistema: ";
				
				Para i=0 hasta 1 Con Paso 1 Hacer
					
					Escribir "Cédula: ", vectorCedula[i];
					Escribir "Nombre: ", vectorNombre[i];
					Escribir "";
					
				FinPara
				
				
				opcionValida = Verdadero;
				Mientras opcionValida = Verdadero Hacer
					
					Escribir "";
					Escribir "";
					Escribir "Qué deseas hacer?:";
					Escribir "1. Ir al menú principal.";
					Escribir "2. Salir";
					Leer desicion;
					
					Segun desicion Hacer
						
						"1":
							
							opcionValida = Falso;
							menu = Verdadero;
							
						"2":
							
							Limpiar Pantalla;
							opcionValida = Falso;
							menu = Falso;
							Escribir "Gracias por usar éste Software";
							Esperar 5 Segundos;
							
						De Otro Modo:
							
							opcionValida = Verdadero;
							Escribir "Opción incorrecta. Vuelve a intentarlo.";
							Esperar 3 Segundos;
							
					FinSegun
					
				FinMientras
				
				
				
			"4": //opcion salir
				
				Limpiar Pantalla;
				menu = Falso;
				Escribir "Gracias por usar éste Software";
				Esperar 5 Segundos;
				
				
			De Otro Modo:
				
				
				
		FinSegun
		
	FinMientras
	
FinProceso

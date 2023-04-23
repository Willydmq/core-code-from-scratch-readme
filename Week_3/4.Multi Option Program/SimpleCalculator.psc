Algoritmo MultiOptionProgram
	
	// Men� de opciones
	Escribir "Seleccione una opci�n:"
	Escribir "1. Suma de dos n�meros"
	Escribir "2. Imprimir d�a de la semana"
	Escribir "3. Imprimir longitud de un texto"
	Leer opc
	
	// Validar la opci�n seleccionada por el usuario
	Segun opc Hacer
		1: // Suma de dos n�meros
			Escribir "Ingrese el primer n�mero:"
			Leer num1
			Escribir "Ingrese el segundo n�mero:"
			Leer num2
			Escribir "La suma de " num1 " y " num2 " es: " num1 + num2
		2: // Imprimir d�a de la semana
			Escribir "Ingrese el n�mero de d�a:"
			Leer dia
			Segun dia Hacer
				1: Escribir "Lunes"
				2: Escribir "Martes"
				3: Escribir "Mi�rcoles"
				4: Escribir "Jueves"
				5: Escribir "Viernes"
				6: Escribir "S�bado"
				7: Escribir "Domingo"
				De Otro Modo: Escribir "Opci�n no disponible"
			FinSegun
		3: // Imprimir longitud de un texto
			Escribir "Ingrese el texto:"
			Leer tex
			longit = Longitud(tex)
			Escribir "La longitud del texto ingresado es: " longit
		De Otro Modo: Escribir "Opci�n no disponible"
	FinSegun


	
FinAlgoritmo

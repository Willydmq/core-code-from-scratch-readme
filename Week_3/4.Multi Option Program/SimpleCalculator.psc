Algoritmo MultiOptionProgram
	
	// Menú de opciones
	Escribir "Seleccione una opción:"
	Escribir "1. Suma de dos números"
	Escribir "2. Imprimir día de la semana"
	Escribir "3. Imprimir longitud de un texto"
	Leer opc
	
	// Validar la opción seleccionada por el usuario
	Segun opc Hacer
		1: // Suma de dos números
			Escribir "Ingrese el primer número:"
			Leer num1
			Escribir "Ingrese el segundo número:"
			Leer num2
			Escribir "La suma de " num1 " y " num2 " es: " num1 + num2
		2: // Imprimir día de la semana
			Escribir "Ingrese el número de día:"
			Leer dia
			Segun dia Hacer
				1: Escribir "Lunes"
				2: Escribir "Martes"
				3: Escribir "Miércoles"
				4: Escribir "Jueves"
				5: Escribir "Viernes"
				6: Escribir "Sábado"
				7: Escribir "Domingo"
				De Otro Modo: Escribir "Opción no disponible"
			FinSegun
		3: // Imprimir longitud de un texto
			Escribir "Ingrese el texto:"
			Leer tex
			longit = Longitud(tex)
			Escribir "La longitud del texto ingresado es: " longit
		De Otro Modo: Escribir "Opción no disponible"
	FinSegun


	
FinAlgoritmo

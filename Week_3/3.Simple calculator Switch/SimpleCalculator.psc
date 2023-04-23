Algoritmo SimpleCalculator
	
	// Solicitar al usuario los dos números
	Escribir "Ingrese el primer número: "
	Leer num1
	Escribir "Ingrese el segundo número: "
	Leer num2
	Escribir "Ingrese la operación a realizar (+, -, *, /): "
	Leer operacion
	
	Si operacion == '+' | operacion == '-' | operacion == '*' | operacion == '/' Entonces
			
			// Validar la operación ingresada por el usuario
			Si operacion == '+' | operacion == '-' | operacion == '*' | operacion == '/' Entonces
				Segun operacion Hacer
					"+" :
						resultado = num1 + num2
					"-" :
						resultado = num1 - num2
					"*" :
						resultado = num1 * num2
					"/" :
						Si operacion == '/' & num2 == 0 
							Escribir "?? División en cero no se puede."
						SiNo resultado = num1 / num2
						FinSi
				FinSegun
				
				// Mostrar el mensaje de procesamiento y el resultado
				Escribir "Procesando: " num1 " " operacion " " num2
				Escribir "Resultado: " resultado
			FinSi
	SiNo
		Escribir "?? La operación no es válida."
	FinSi

	
FinAlgoritmo

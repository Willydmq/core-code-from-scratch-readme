Algoritmo SimpleCalculator
	
	// Solicitar al usuario los dos n�meros
	Escribir "Ingrese el primer n�mero: "
	Leer num1
	Escribir "Ingrese el segundo n�mero: "
	Leer num2
	Escribir "Ingrese la operaci�n a realizar (+, -, *, /): "
	Leer operacion
	
	Si operacion == '+' | operacion == '-' | operacion == '*' | operacion == '/' Entonces
			
			// Validar la operaci�n ingresada por el usuario
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
							Escribir "?? Divisi�n en cero no se puede."
						SiNo resultado = num1 / num2
						FinSi
				FinSegun
				
				// Mostrar el mensaje de procesamiento y el resultado
				Escribir "Procesando: " num1 " " operacion " " num2
				Escribir "Resultado: " resultado
			FinSi
	SiNo
		Escribir "?? La operaci�n no es v�lida."
	FinSi

	
FinAlgoritmo

Algoritmo CalculadoraConRepetir
	
    Repetir
        Escribir "Ingrese el primer número:"
        Leer num1
		
        Escribir "Ingrese el segundo número:"
        Leer num2
		
        Escribir "Ingrese la operación a realizar (+,-,*,/):"
        Leer operacion
		
        Si operacion = "+" Entonces
            resultado = num1 + num2
        Sino Si operacion = "-" Entonces
				resultado = num1 - num2
			Sino Si operacion = "*" Entonces
					resultado = num1 * num2
				Sino Si operacion = "/" Entonces
						resultado = num1 / num2
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir "El resultado es: ", resultado
					
		Escribir "¿Desea realizar otra operación? (S/N)"
		Leer respuesta
					
	Hasta Que respuesta = "N" 
				
FinAlgoritmo

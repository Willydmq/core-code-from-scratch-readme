Algoritmo CalculadoraConRepetir
	
    Repetir
        Escribir "Ingrese el primer n�mero:"
        Leer num1
		
        Escribir "Ingrese el segundo n�mero:"
        Leer num2
		
        Escribir "Ingrese la operaci�n a realizar (+,-,*,/):"
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
					
		Escribir "�Desea realizar otra operaci�n? (S/N)"
		Leer respuesta
					
	Hasta Que respuesta = "N" 
				
FinAlgoritmo

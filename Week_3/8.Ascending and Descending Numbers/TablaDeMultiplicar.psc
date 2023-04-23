Algoritmo AscendingDescendingNumbers
	
    // Solicitar al usuario el n�mero del cual se desea imprimir los n�meros
    Escribir "Ingrese un n�mero:"
    Leer num
	
    // Solicitar al usuario si desea imprimir los n�meros en orden ascendente o descendente
    Escribir "Ingrese el orden de impresi�n (A para ascendente, D para descendente):"
    Leer orden
	
    // Validar la entrada del usuario y determinar el orden de impresi�n
    Si orden = "A" Entonces
        // Imprimir los n�meros en orden ascendente
        Escribir "Los n�meros del 0 al " + ConvertirATexto(num) + " en orden ascendente son:"
        Para i <- 0 Hasta num Con Paso 1 Hacer
            Escribir ConvertirATexto(i)
        FinPara
    Sino Si orden = "D" Entonces
			// Imprimir los n�meros en orden descendente
			Escribir "Los n�meros del " + ConvertirATexto(num) + " al 0 en orden descendente son:"
			Para i <- num Hasta 0 Con Paso -1 Hacer
				Escribir ConvertirATexto(i)
			FinPara
		Sino
			// Informar al usuario que la entrada es inv�lida
			Escribir "La entrada es inv�lida. Ingrese A para ascendente o D para descendente."
		FinSi
	FinSi
	
FinAlgoritmo
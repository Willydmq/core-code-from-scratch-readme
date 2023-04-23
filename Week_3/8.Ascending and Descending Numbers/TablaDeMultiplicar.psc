Algoritmo AscendingDescendingNumbers
	
    // Solicitar al usuario el número del cual se desea imprimir los números
    Escribir "Ingrese un número:"
    Leer num
	
    // Solicitar al usuario si desea imprimir los números en orden ascendente o descendente
    Escribir "Ingrese el orden de impresión (A para ascendente, D para descendente):"
    Leer orden
	
    // Validar la entrada del usuario y determinar el orden de impresión
    Si orden = "A" Entonces
        // Imprimir los números en orden ascendente
        Escribir "Los números del 0 al " + ConvertirATexto(num) + " en orden ascendente son:"
        Para i <- 0 Hasta num Con Paso 1 Hacer
            Escribir ConvertirATexto(i)
        FinPara
    Sino Si orden = "D" Entonces
			// Imprimir los números en orden descendente
			Escribir "Los números del " + ConvertirATexto(num) + " al 0 en orden descendente son:"
			Para i <- num Hasta 0 Con Paso -1 Hacer
				Escribir ConvertirATexto(i)
			FinPara
		Sino
			// Informar al usuario que la entrada es inválida
			Escribir "La entrada es inválida. Ingrese A para ascendente o D para descendente."
		FinSi
	FinSi
	
FinAlgoritmo
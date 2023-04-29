Algoritmo lanzamiento_dados
	
    Definir dado1, dado2, i como Entero
    Definir mensaje como Cadena
	
    Para i <- 1 Hasta 10 Con Paso 1 Hacer
        // Simulación del lanzamiento de los dos dados
        dado1 <- aleatorio(1, 6)
        dado2 <- aleatorio(1, 6)
		
        // Comprobación de si los dos dados tienen el mismo valor
        Si dado1 = dado2 Entonces
            mensaje <- " - los dados son iguales"
        Sino
            mensaje <- ""
			
			// Salida de los resultados
			Escribir "Lanzamiento ", i, ": ", dado1, " ", dado2, mensaje
		FinSi
	FinPara
		
FinAlgoritmo
Funcion result <- sumOfPairs()
		Definir numero, sumaComoEntero Como Entero
		sumaComoEntero = 0
		Escribir "Ingrese un n�mero del 1 al 100, o un n�mero negativo o mayor a 100 para terminar:"
		Leer numero
		Mientras numero >= 1 & numero <= 100 Hacer
			Si numero %2 = 0 Entonces
				sumaComoEntero = sumaComoEntero + numero
			FinSi
			Escribir "Ingrese otro n�mero del 1 al 100, o un n�mero negativo o mayor a 100 para terminar:"
			Leer numero
		FinMientras
		result = sumaComoEntero
FinFuncion

Algoritmo exampleSumOfPairs
	Imprimir sumOfPairs()
FinAlgoritmo
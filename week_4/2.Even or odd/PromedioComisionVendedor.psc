Algoritmo NumerosParesImpares
	
	Repetir
		Escribir "Escriba un número entre 1 y 50:"
		Leer num
		Si num < 1 | num > 50 Entonces
			Escribir "Número inválido."
		FinSi
	Mientras Que num < 1 | num > 50
	
	par = num % 2 = 0
	
	Para count = 1 Hasta num Con Paso 1 Hacer
		Si count % 2 = 0 & par Entonces
			Escribir count
		FinSi
		Si count % 2 = 1 & ~par Entonces
			Escribir count
		FinSi
	FinPara
	
FinAlgoritmo
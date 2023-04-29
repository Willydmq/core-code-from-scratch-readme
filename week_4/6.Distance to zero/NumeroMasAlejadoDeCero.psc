Algoritmo NumeroMasAlejadoDeCero
	Definir valor, valorMasAlejado Como Real
	valorMasAlejado <- 0
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Ingrese el valor ", i, ": "
		Leer valor
		Si Abs(valor) > Abs(valorMasAlejado) Entonces
			valorMasAlejado <- valor
		FinSi
	FinPara
	Escribir "El número más alejado de cero es: ", redon(valorMasAlejado)
FinAlgoritmo
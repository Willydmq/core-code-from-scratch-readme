Funcion result <-  compareDistances()
	Definir negativeNumber, positiveNumber Como Real;
	negativeNumber = 0;
	positiveNumber = 0;
	
	Para count=1 Hasta 5 Con Paso 1 Hacer
		Escribir("Ingrese un número: ");
		Leer num;
		
		Si num > 0 Entonces
			positiveNumber = positiveNumber + num;
		Sino
			negativeNumber = negativeNumber + num;
		FinSi
	FinPara
	
	Devolver <- positiveNumber > Abs(negativeNumber);
FinFuncion

Algoritmo exampleCompareDistances
	Definir result Como Logico;
	result <- compareDistances();
	
	Si result Entonces
		Imprimir("La distancia a 0 es mayor con positivos");
	Sino
		Imprimir("La distancia a 0 es mayor con negativos");
	FinSi
FinAlgoritmo
Algoritmo TablaDeMultiplicar
	
    Escribir "Ingrese el n�mero para calcular su tabla de multiplicar:"
    Leer numero
	
    Escribir "Tabla de multiplicar del n�mero ", numero, ":"
	
    multiplicador = 1
	
    Mientras multiplicador <= 10 Hacer
        resultado = numero * multiplicador
        Escribir numero, " x ", multiplicador, " = ", resultado
        multiplicador = multiplicador + 1
    FinMientras
	
FinAlgoritmo


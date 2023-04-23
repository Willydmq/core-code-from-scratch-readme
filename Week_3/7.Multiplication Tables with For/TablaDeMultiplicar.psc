Algoritmo TablaDeMultiplicar
	
    // Solicitar al usuario el n�mero del cual se desea imprimir la tabla de multiplicar
    Escribir "Ingrese un n�mero:"
    Leer dato
    num <- ConvertirANumero(dato)
    
    // Calcular la tabla de multiplicar del n�mero ingresado
    Escribir "Tabla de multiplicar del " + ConvertirATexto(num) + ":"
    Para i <- 1 Hasta 10 Con Paso 1 Hacer
        producto <- num * i
        Escribir ConvertirATexto(num) + " x " + ConvertirATexto(i) + " = " + ConvertirATexto(producto)
    FinPara
    
FinAlgoritmo
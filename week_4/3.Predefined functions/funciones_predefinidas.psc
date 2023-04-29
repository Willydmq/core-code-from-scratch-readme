Algoritmo funciones_predefinidas
	
    Escribir "Ingrese un número: "
    Leer num
	
    // Funciones matemáticas
    escribir "Valor absoluto de ", num, ": ", abs(num)
    escribir "Parte entera de ", num, ": ", trunc(num)
    escribir "Entero más cercano de ", num, ": ", redon(num)
	
    // Funciones de números aleatorios
    escribir "Número aleatorio de 0 a ", num-1, ": ", azar(num)
    escribir "Número aleatorio entre 1 y 100: ", aleatorio(1, 100)
	
    // Funciones de cadenas de texto
    escribir "Ingrese una palabra: "
    Leer palabra
    escribir "Longitud de la palabra ", palabra, ": ", longitud(palabra)
    escribir "Palabra en mayúsculas: ", mayusculas(palabra)
    escribir "Palabra en minúsculas: ", minusculas(palabra)
    escribir "Subcadena de ", palabra, ": ", subcadena(palabra, 2, 5)
    
FinAlgoritmo
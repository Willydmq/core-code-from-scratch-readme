Algoritmo funciones_predefinidas
	
    Escribir "Ingrese un n�mero: "
    Leer num
	
    // Funciones matem�ticas
    escribir "Valor absoluto de ", num, ": ", abs(num)
    escribir "Parte entera de ", num, ": ", trunc(num)
    escribir "Entero m�s cercano de ", num, ": ", redon(num)
	
    // Funciones de n�meros aleatorios
    escribir "N�mero aleatorio de 0 a ", num-1, ": ", azar(num)
    escribir "N�mero aleatorio entre 1 y 100: ", aleatorio(1, 100)
	
    // Funciones de cadenas de texto
    escribir "Ingrese una palabra: "
    Leer palabra
    escribir "Longitud de la palabra ", palabra, ": ", longitud(palabra)
    escribir "Palabra en may�sculas: ", mayusculas(palabra)
    escribir "Palabra en min�sculas: ", minusculas(palabra)
    escribir "Subcadena de ", palabra, ": ", subcadena(palabra, 2, 5)
    
FinAlgoritmo
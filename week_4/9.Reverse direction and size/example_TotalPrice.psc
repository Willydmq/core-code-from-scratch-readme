Funcion result <- ReverseDirectionAndSize (string)
	Definir result Como Caracter;
	result = "";
	Para count = Longitud(string) Hasta 0 Con Paso -1 Hacer
		letter = Subcadena(string,count,count);
		SI letter = Mayusculas(letter) Entonces
			letter = Minusculas(letter)
		SiNo
			letter = Mayusculas(letter)
		FinSi
		result = Concatenar(result, letter)
	FinPara
Fin Funcion

Algoritmo example_ReverseDirectionAndSize2
	Definir texto1 Como Cadena;
	Definir texto2 Como Cadena;
	Definir texto3 Como Cadena;
	
	texto1 = "Hola";
	texto2 = "Leonardo";
	texto3 = "Texto";
	
	Imprimir ReverseDirectionAndSize(texto1);
	Imprimir ReverseDirectionAndSize(texto2);
	Imprimir ReverseDirectionAndSize(texto3);
FinAlgoritmo
Algoritmo Calculadora
	Imprimir 'Ingrese primer numero'
	Leer num1
	Imprimir 'Ingrese segundo numero'
	Leer num2
	Imprimir 'Ingrese una operación: +,-,*,/'
	Leer signo
	Si signo == '+' | signo == '-' | signo == '*' | signo == '/' Entonces
		Si signo == '+' Entonces
			Imprimir 'Resultado: ' + ConvertirATexto(num1 + num2)
		SiNo
			Si signo == '-' Entonces
				Imprimir 'Resultado: ' + ConvertirATexto(num1 + num2)
			SiNo
				Si signo == '*' Entonces
					Imprimir 'Resultado: ' + ConvertirATexto(num1 + num2)
				SiNo
					Imprimir  'Resultado: ' + ConvertirATexto(num1 + num2)
				FinSi
			FinSi
		FinSi
	SiNo
		Imprimir '?? La operación no es valida'
	FinSi
FinAlgoritmo
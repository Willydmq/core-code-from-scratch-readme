Algoritmo specialNumber
	Imprimir 'Ingrese primer numero'
	Leer n
	Si n == 100 Entonces
		Imprimir 'This is a special number'
	SiNo 
		Si (n < 1000) & (n% 10==0) Entonces
			Imprimir 'Este n�mero es casi especial'
			SiNo
				Imprimir 'S�lo un n�mero regular'
		FinSi
	FinSi
FinAlgoritmo
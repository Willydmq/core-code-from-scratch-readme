Algoritmo Saludo
	
	Definir Greetings como entero
	contador = 0
	
	Repetir
		Escribir "Ingrese la hora actual (formato 24 horas): "
		Leer hora
		
		Si hora >= 0 & hora <= 12 Entonces
			Escribir "Buenos dias!"
		Sino Si hora >= 13 & hora <= 18 Entonces
				Escribir "Buenas tardes!"
			Sino Si hora >= 19 & hora <= 23 Entonces
					Escribir "Buenas noches!"
				Fin Si
			FinSi	
		FinSi	
				contador = contador + 1
				
				Escribir "¿Quiere realizar otro saludo? (Si/No)"
				Leer respuesta
				
			Mientras Que  respuesta = "Si"
					
					Escribir "El programa ha saludado " + ConvertirATexto(contador) + " veces."
				
FinAlgoritmo

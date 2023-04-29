Algoritmo JuegoMoneda
	Definir nombre1, nombre2, ganador Como Caracter
	Definir valor1, valor2, valorGanado Como Real
	Escribir "Ingrese el nombre del primer jugador: "
	Leer nombre1
	Escribir "Ingrese el valor del primer jugador: "
	Leer valor1
	Escribir "Ingrese el nombre del segundo jugador: "
	Leer nombre2
	Escribir "Ingrese el valor del segundo jugador: "
	Leer valor2
	Si valor1 <= 0 & valor2 <= 0 Entonces
		ganador <- "Juego cancelado"
	Sino
		Si valor1 <= 0 Entonces
			ganador <- nombre2
			valorGanado <- valor2
		Sino
			Si valor2 <= 0 Entonces
				ganador <- nombre1
				valorGanado <- valor1
			Sino
				Si aleatorio(0, 1) = 0 Entonces
					ganador <- nombre1
					valorGanado <- valor1
				Sino
					ganador <- nombre2
					valorGanado <- valor2
				FinSi
			FinSi
		FinSi
	FinSi
	Si ganador <> "Juego cancelado" Entonces
		Escribir "El ganador es: ", Mayusculas(ganador)
		Escribir "Valor ganado: ", Redon(valorGanado)
	Sino
		Escribir "Juego cancelado"
	FinSi
FinAlgoritmo
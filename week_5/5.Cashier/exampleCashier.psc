Funcion balance <- cashier ()
	Definir balance Como Real;
	balance = 1000;
	Repetir
		Imprimir "Seleccione una opción:";
		Imprimir "a. Depositar.";
		Imprimir "b. Retirar.";
		Imprimir "c. Salir.";
		leer option
		Segun option Hacer
			"a":
				balance <- balance + deposit()
			"b":
				balance <- balance - withdraw()
			"c":
				Imprimir "Gracias por usar el cajero automático."
		FinSegun
	Mientras Que option = "a" | option = "b"
	Devolver<- balance
FinFuncion

Funcion value <- deposit()
	Imprimir "¿Cuánto desea depositar?";
	Definir value Como Real
	Leer value
	Devolver<- value
FinFuncion

Funcion value <- withdraw()
	Imprimir "¿Cuánto desea retirar?";
	Definir value Como Real
	Leer value
	Devolver <-value
FinFuncion

Algoritmo exampleCashier
	Definir saldo Como Real
	saldo <- cashier()
	Imprimir "Su saldo actual es de: ", saldo
FinAlgoritmo
Algoritmo PromedioComisionVendedor
	
	Definir ventas, i, totalVentas, promedioVentas, comision Como Real
	
	Escribir "Ingrese el número de ventas del vendedor: "
	Leer ventas
	
	totalVentas = 0
	Para i = 1 Hasta ventas Con Paso 1 Hacer
		Escribir "Ingrese el valor de la venta ", i, ": "
		Leer venta
		totalVentas = totalVentas + venta
	FinPara
	
	promedioVentas = totalVentas / ventas
	
	Si ventas > 5 Entonces
		comision = totalVentas * 0.15
	Sino
		comision = totalVentas * 0.10
	FinSi
	
	Escribir "El promedio de ventas fue: ", promedioVentas
	Escribir "La comisión del vendedor es: ", comision
	
FinAlgoritmo
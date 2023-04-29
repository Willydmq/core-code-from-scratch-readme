Funcion value<- TotalPrice(price, iva) 
	Definir value Como Real;
	
	Si price > 3000 Entonces
		value = (price + (price * iva / 100)) / 1.1
	SiNo
		value = price + (price * iva / 100)
	FinSi
FinFuncion

Algoritmo example_TotalPrice
	precio = 5000
	IVA = 21
	precioTotal = TotalPrice(precio, iva)
	Imprimir "El precio total con IVA incluido es: ", precioTotal
FinAlgoritmo
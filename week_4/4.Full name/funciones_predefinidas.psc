Algoritmo nombre_completo
	
    Definir nombre, apellido, nombreCompleto como Cadena
	
    // Entrada de datos
    Escribir "Ingrese su nombre: "
    Leer nombre
    Escribir "Ingrese su apellido: "
    Leer apellido
	
    // Procesamiento de datos
    nombreCompleto <- mayusculas(subcadena(nombre, 0, 0)) + minusculas(subcadena(nombre, 1, longitud(nombre)-1)) + " " + mayusculas(subcadena(apellido, 0, 0)) + minusculas(subcadena(apellido, 1, longitud(apellido)-1))
	
    // Salida de datos
    Escribir "Su nombre completo es: ", nombreCompleto
	
FinAlgoritmo
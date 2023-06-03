function incrementString(strng) {
  // Buscamos los dígitos al final del string
  const match = strng.match(/\d*$/);
  // Si no hay dígitos, simplemente agregamos uno al final
  if (!match[0]) return strng + "1";
  // Incrementamos los dígitos encontrados
  const num = parseInt(match[0]) + 1;
  // Obtenemos la longitud del número encontrado
  const lengthDiff = match[0].length - num.toString().length;
  // Creamos un string con los dígitos incrementados y rellenamos con ceros a la izquierda si es necesario
  const incrementedNum = "0".repeat(lengthDiff < 0 ? 0 : lengthDiff) + num;
  // Concatenamos el string original con los dígitos incrementados
  return strng.slice(0, match.index) + incrementedNum;
}
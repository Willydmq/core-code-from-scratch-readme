function generateHashtag(str) {
  // Si la cadena está vacía o contiene solo espacios en blanco, devolvemos falso
  if (str.trim().length === 0) {
    return false;
  }
  
  // Reemplazamos los espacios en blanco por una letra mayúscula en cada palabra
  let words = str.split(' ').map(word => word.charAt(0).toUpperCase() + word.slice(1));
  
  // Unimos las palabras y agregamos el símbolo "#" al principio
  let hashtag = '#' + words.join('');
  
  // Devolvemos el hashtag si su longitud es menor o igual a 140 caracteres, de lo contrario, devolvemos falso
  return hashtag.length <= 140 ? hashtag : false;
}
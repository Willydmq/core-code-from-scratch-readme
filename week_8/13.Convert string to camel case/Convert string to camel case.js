function toCamelCase(str){
  const words = str.split(/-|_/);
  const firstWord = words[0];
  const restWords = words.slice(1);
  const capitalizedWords = restWords.map(word => word.charAt(0).toUpperCase() + word.slice(1));
  return firstWord + capitalizedWords.join('');
}
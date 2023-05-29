const decodeMorse = function(morseCode){
  const words = morseCode.trim().split('   ');
  const decodedWords = words.map(word => {
    const letters = word.split(' ');
    const decodedLetters = letters.map(letter => MORSE_CODE[letter]);
    return decodedLetters.join('');
  });
  return decodedWords.join(' ');
};
var encryptThis = function(text) {
  return text.split(' ').map(word => {
    const firstCharCode = word.charCodeAt(0);
    if (word.length === 1) {
      return firstCharCode;
    }
    if (word.length === 2) {
      return `${firstCharCode}${word.charAt(1)}`;
    }
    const secondCharCode = word.charAt(1);
    const lastCharCode = word.charAt(word.length - 1);
    const middle = word.slice(2, word.length - 1);
    return `${firstCharCode}${lastCharCode}${middle}${secondCharCode}`;
  }).join(' ');
};
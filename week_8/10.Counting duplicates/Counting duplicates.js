function duplicateCount(text){
  const charCounts = {};
  let count = 0;
  for (let i = 0; i < text.length; i++) {
    const char = text[i].toLowerCase();
    charCounts[char] = charCounts[char] || 0;
    charCounts[char]++;
  }
  for (const char in charCounts) {
    if (charCounts[char] > 1) {
      count++;
    }
  }
  return count;
}
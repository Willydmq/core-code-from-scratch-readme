function firstWord(s) {
  let firstBlank = s.indexOf(' ');
  return s.substr(0, firstBlank);
}

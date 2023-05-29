function validParentheses(parens) {
  const stack = [];
  for (let i = 0; i < parens.length; i++) {
    const char = parens[i];
    if (char === '(') {
      stack.push(char);
    } else if (char === ')') {
      if (stack.length === 0) {
        return false;
      }
      stack.pop();
    }
  }
  return stack.length === 0;
}
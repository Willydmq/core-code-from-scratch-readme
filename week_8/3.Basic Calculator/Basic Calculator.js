function calculate(num1, operation, num2) {
  let result;
  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 === 0) {
        result = null;
      } else {
        result = num1 / num2;
      }
      break;
    default:
      result = null;
      break;
  }
  return result;
}
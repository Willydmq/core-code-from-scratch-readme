/**
 * Primero, necesitamos seleccionar los elementos relevantes del DOM. Podemos hacer esto utilizando el método querySelector() para obtener los elementos por sus clases o identificadores.
 */

const displayEl = document.querySelector(".display");
const numberButtons = document.querySelectorAll(
  ".number-pad .button:not(.operation)"
);
const operationButtons = document.querySelectorAll(".number-pad .operation");
const clearButtonEl = document.querySelector(
  ".number-pad .button.operation:nth-child(1)"
);
const toggleSignButton = document.querySelector(
  ".number-pad .button.operation:nth-child(2)"
);
const percentButton = document.querySelector(
  ".number-pad .button.operation:nth-child(3)"
);
const divideButton = document.querySelector(
  ".number-pad .button.operation:nth-child(4)"
);
const multiplyButton = document.querySelector(
  ".number-pad .button.operation:nth-child(8)"
);
const subtractButton = document.querySelector(
  ".number-pad .button.operation:nth-child(12)"
);
const addButton = document.querySelector(
  ".number-pad .button.operation:nth-child(16)"
);
const equalsButton = document.querySelector(".number-pad .button.equal");
const decimalButton = document.querySelector(".number-pad .button.decimal");

/**
 * Para la funcionalidad de la calculadora, necesitamos establecer el estado actual de la calculadora. En este caso, necesitamos el número actual, el número anterior, la operación actual y la operación anterior (si la hay). Podemos hacer esto utilizando variables.
 */

let currentOperand = "0";
let previousOperand = "";
let currentOperation = null;
let previousOperation = null;

/**
 * Ahora, necesitamos escribir funciones que manejen las operaciones que se realizarán en la calculadora.
 */

function add(a, b) {
  return a + b;
}

function subtract(a, b) {
  return a - b;
}

function multiply(a, b) {
  return a * b;
}

function divide(a, b) {
  return a / b;
}

/**
 * La función operate() será nuestra función principal para realizar operaciones en la calculadora. Tomará tres argumentos: el operador, el primer número y el segundo número. Luego, usará un interruptor para seleccionar la operación a realizar y devolverá el resultado. Si se proporciona un operador no válido, la función operate() devolverá null.
 */

function operate(operator, a, b) {
  switch (operator) {
    case "+":
      return add(a, b);
    case "-":
      return subtract(a, b);
    case "x":
      return multiply(a, b);
    case "÷":
      return divide(a, b);
    default:
      return null;
  }
}

/**
 * La función clear() establecerá todos los valores a sus valores iniciales. La función toggleSign() cambiará el signo del número actual. La función percent() dividirá el número actual por 100. La función appendNumber() agregará un número al número actual. La función setOperation() establecerá la operación actual. La función equals() realizará la operación actual.
 */

function clear() {
  currentOperand = "0";
  previousOperand = "";
  currentOperation = null;
  previousOperation = null;
  updateDisplay();
}

function toggleSign() {
  currentOperand = (-1 * parseFloat(currentOperand)).toString();
  updateDisplay();
}

function percent() {
  currentOperand = (parseFloat(currentOperand) / 100).toString();
  updateDisplay();
}

function appendNumber(number) {
  if (currentOperand === "0" && number !== ".") {
    currentOperand = "";
  }
  if (number === "." && currentOperand.includes(".")) return;
  currentOperand += number.toString();
}

function setOperation(operation) {
  if (previousOperation !== null) {
    currentOperand = operate(
      previousOperation,
      parseFloat(previousOperand),
      parseFloat(currentOperand)
    ).toString();
    previousOperation = operation;
    previousOperand = currentOperand;
    currentOperand = "";
  } else {
    previousOperand = currentOperand;
    currentOperand = "";
    previousOperation = operation;
  }
}

function equals() {
  if (previousOperation === null) return;
  currentOperand = operate(
    previousOperation,
    parseFloat(previousOperand),
    parseFloat(currentOperand)
  ).toString();
  previousOperand = "";
  previousOperation = null;
  updateDisplay();
}

/**
 * necesitamos actualizar el display de la calculadora. Podemos hacer esto utilizando la función updateDisplay().
 *
 * establecemos la longitud máxima del número en 6 caracteres. Luego, si el número actual es mayor que 6 caracteres, lo truncamos utilizando la función toExponential() de JavaScript y lo establecemos como el nuevo número actual.
 */
function updateDisplay() {
  if (currentOperand.length > 6) {
    currentOperand = parseFloat(currentOperand).toExponential(5);
  }
  displayEl.textContent = currentOperand.replace(
    "=",
    ""
  ); /* Esta línea busca y reemplaza el signo igual en el textContent del display con una cadena vacía, eliminándolo del texto que se muestra.*/
}

/**
 * Ahora, podemos agregar eventos de clic a los botones de la calculadora utilizando el método addEventListener().
 */

clearButtonEl.addEventListener("click", clear);
toggleSignButton.addEventListener("click", toggleSign);
percentButton.addEventListener("click", percent);
divideButton.addEventListener("click", () => setOperation("÷"));
multiplyButton.addEventListener("click", () => setOperation("x"));
subtractButton.addEventListener("click", () => setOperation("-"));
addButton.addEventListener("click", () => setOperation("+"));
equalsButton.addEventListener("click", equals);
decimalButton.addEventListener("click", () => {
  if (currentOperand.includes(".")) return;
  appendNumber(".");
  updateDisplay();
});

/**
 * agregamos eventos de clic a todos los botones relevantes. Luego, utilizamos funciones como setOperation() y appendNumber() dependiendo del botón que se haya hecho clic.
 */

numberButtons.forEach((button) => {
  button.addEventListener("click", () => {
    appendNumber(button.textContent);
    updateDisplay();
  });
});

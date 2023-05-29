function warnTheSheep(queue) {
  const position = queue.indexOf("wolf");
  if (position === queue.length - 1) {
    return "Pls go away and stop eating my sheep";
  } else {
    return `Oi! Sheep number ${queue.length - position - 1}! You are about to be eaten by a wolf!`;
  }
}
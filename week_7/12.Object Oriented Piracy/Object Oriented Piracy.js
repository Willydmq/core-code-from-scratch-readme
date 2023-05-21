function Ship(draft, crew) {
  this.draft = draft;
  this.crew = crew;
  
  this.isWorthIt = function() {
    // Calculamos el valor del barco utilizando la fórmula draft - (crew * 1.5)
    if (this.draft - (this.crew * 1.5) > 20) {
      return true;
    } else {
      return false;
    }
  };
}
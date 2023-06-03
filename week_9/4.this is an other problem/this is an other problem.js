class NamedOne {
  constructor(first, last) {
    this.firstName = first;
    this.lastName = last;
  }
  
  get fullName() {
    return `${this.firstName} ${this.lastName}`;
  }
  
  set fullName(fullName) {
    if(fullName.match(/\w+ \w+/))
      [this.firstName, this.lastName] = fullName.split(' ');
  }
}
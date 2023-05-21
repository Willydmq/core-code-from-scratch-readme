function strCount(obj) {
  let count = 0;

  for (let prop in obj) {
    if (typeof obj[prop] === 'string') {

      count++;
    } else if (typeof obj[prop] === 'object' && obj[prop] !== null) {
      count += strCount(obj[prop]);
    }
  }

  return count;
}
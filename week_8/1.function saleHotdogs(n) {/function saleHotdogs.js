function saleHotdogs(n) {
  let price;
  if (n < 5) {
    price = 100;
  } else if (n >= 5 && n <= 9) {
    price = 95;
  } else {
    price = 90;
  }
  return n * price;
}
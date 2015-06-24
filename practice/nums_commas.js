// 3. Refactored Solution

function reverseItem(item) {
  return item.toString().split('').reverse().join('');
}

function separateComma(number) {
  string = reverseItem(number);
  array = [];
  for (var i = 0; i < string.length; i += 3) {
  array.push(string.slice(i, i + 3));
  };
  return reverseItem(array.join(','));
}

console.log(separateComma(1))
console.log(separateComma(10))
console.log(separateComma(100))
console.log(separateComma(1000))
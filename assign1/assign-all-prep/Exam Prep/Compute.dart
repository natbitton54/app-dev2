void main(){
  int num1 = 10;
  int num2 = 2;

  var addition = compute(num1, num2, (a,b) => a + b);
  print(addition);

  var subtraction = compute(num1, num2, (a,b) => a - b);
  print(subtraction);

  var muliplication = compute(num1, num2, (a,b) => a * b);
  print(muliplication);

  var division = compute(num1, num2, (a,b) => b != 0 ? a ~/ b : 'not divisible');
  print(division);
}

int compute(int num1, int num2,  Function operation){
  return operation(num1, num2);
}


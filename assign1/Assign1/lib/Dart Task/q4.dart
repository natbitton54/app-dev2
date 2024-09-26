void main(){
  print("way 1");
  print(performMathOperation(2, 3, "subtract"));
  print(performMathOperation(2, 3, "division"));
  print(performMathOperation(2, 3, "multiplication"));
  print(performMathOperation(2, 3, "add"));
  print(performMathOperation(2, 3, ""));
  print(performMathOperation(2, 3));

  // way 2
  print(" ");
  print("way 2");
  print(performMathOperation2(2, 3, "subtract"));
  print(performMathOperation2(2, 3, "division"));
  print(performMathOperation2(2, 3, "multiplication"));
  print(performMathOperation2(2, 3, "add"));
  print(performMathOperation2(2, 3, ""));
  print(performMathOperation2(2, 3));
}

double ? performMathOperation(double num1, double num2, [String? operation]){
  double result;

  switch(operation){
    case "subtract":
      result = num1 - num2;
      break;
    case "multiplication":
      result = num1 * num2;
      break;
    case "division":
      result = num2 != 0 ? num1 / num2 : 0.0;
      break;
    default:
      result = num1 + num2;
      break;
  }
  return result;
}

// way 2
double ? performMathOperation2(double num1, double num2, [String? operation]){
  double? result;

  if(operation == "multiplication"){
    result = num1 * num2;
  } else if(operation == "division"){
    result = num2 != 0 ? num1 / num2 : 0.0;
  } else if(operation == "subtract"){
    result = num1 - num2;
  } else{
    result = num1 + num2;
  }

return result;
}
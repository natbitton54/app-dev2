void main(){
  int number = 1;
  print(factorial1(number));
  print(factorial2(number));
}

int factorial1(int num){
  int base = 1;

  for(int i = 1; i<=num; i++){
      base *= i;
  }

  return base;
}

int factorial2(int num){
  if(num == 0){
    return 1;
  }

  return num * factorial2(num-1);
}
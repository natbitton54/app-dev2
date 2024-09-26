void main() async{
  await for(var prime in streamExample()){
    print(prime);
  }

}

Stream<int> streamExample() async*{

  bool isPrime(int num){
    if(num<2) return false;

    for(int i = 2; i<= num ~/ 2; i++){
      if(num % i ==0) return false;
    }
    return true;
  }

  for(var i =1; i<=100; i++){
    if(isPrime(i)){
      yield i;
    }
  }
}
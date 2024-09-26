void main() async{
  List<int> nums = [3,5,1,2,7,4,6,0,9];
  print("Largest number from the list: ${await findMax(nums)}");
  print("Smallest number from the list: ${await findMin(nums)}");
  print("The sum of the list: ${await sum(nums)}");
  print("The sum of the list - way 2: ${await sum2(nums)}");
  print("Number of even numbers in the list: ${await countEvens(nums)}");
  print("Number of odd numbers in the list: ${await countOdds(nums)}");
  print("Number of even numbers in the list - way 2: ${await countEvens2(nums)}");
  print("Number of odd numbers in the list - way 2: ${await countOdds2(nums)}");
}


Future<int> findMax(List<int> numbers) async{
  await Future.delayed(Duration(seconds: 2));

  int max = numbers.reduce((a,b) => a > b ? a : b);

  return max;
}

Future<int> findMin(List<int> numbers) async{
  await Future.delayed(Duration(seconds: 2));

  int max = numbers.reduce((a,b) => a < b ? a : b);

  return max;
}

Future<int> sum(List<int> numbers) async{
  await Future.delayed(Duration(seconds: 2));

  int sum = 0;

  for(int i = 0; i<=numbers.length-1; i++){
    sum += numbers[i];
  }

  return sum;
}

// way 2 for sum
Future<int> sum2(List<int> numbers) async {
  await Future.delayed(Duration(seconds: 2));

  return numbers.reduce((a,b) => a+b);
}

Future<int> countEvens(List<int> numbers) async{
  await Future.delayed(Duration(seconds: 2));

  int count = 0;

  for(int number in numbers){
    if(number % 2 == 0){
      count++;
    }
  }

  return count;
}

Future<int> countOdds(List<int> numbers) async{
  await Future.delayed(Duration(seconds: 2));

  int count = 0;

  for(int number in numbers){
    if(number % 2 == 1 && numbers != 0){
      count++;
    }
  }

  return count;
}

Future<int> countEvens2(List<int> numbers) async{
  await Future.delayed(Duration(seconds: 2));

  return numbers.where((num) => num % 2 == 0).length;
}

Future<int> countOdds2(List<int> numbers) async {
  await Future.delayed(Duration(seconds: 2));

 return numbers.where((number) => number % 2 != 0).length;
}



void main() async{
  Stream<int> numbers = Stream.fromIterable([1,2,3,4]);

  await for(var squared in squaredNums(numbers)){
    print(squared);
  }
}

Stream<int> squaredNums(Stream<int> nums) async*{
   await for(var num in nums){
    yield num*num;
  }
}
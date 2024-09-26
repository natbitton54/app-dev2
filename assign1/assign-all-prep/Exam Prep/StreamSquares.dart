void main(){
  Stream<int> nums = Stream.fromIterable([1,2,3,4,5,6,-3]);

  emittedNums(nums).listen(
    (num) => print(num),
  );
}

Stream<int> emittedNums(Stream<int> nums) async* {
  await for (var num in nums) {
    try {
      int squared = num * num;
      if (squared > 10) {
        yield squared;
      }
    } catch (e) {
      print('Error encountered: $e');
    }
  }
}
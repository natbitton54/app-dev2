void main() async {


  var squared = await streamSquaredNumbers().map((num) => num.isEven ? num * num : num).toList();
  print(squared);
}

Stream<int> streamSquaredNumbers() async* {
  for (int i = 1; i <= 10; i++) {
    yield i;
  }
}

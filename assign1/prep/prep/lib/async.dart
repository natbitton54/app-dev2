import 'dart:async';

Stream<int> countStream() async*{
  for(int i = 0; i < 5; i++){
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}

void main() async{
  List<int> nums = [1,2,3,4,5,6,33,56,22,56,333,77];

  // int max = nums.reduce((a,b) => a > b ? a : b);

  Stream<int> numberStream = Stream.fromIterable(nums);
  int max = await numberStream.reduce((a,b) => a > b ? a : b);
  List<int> evenNumbs = await nums.map((num) => num%2==0 ? num : 0).where((num) => num != 0).toList();


  print(evenNumbs);

  Stream<int> ogStream = Stream.fromIterable([1,2,3,4,5]);

  Stream<int> transformStream = ogStream.map((int value){
    return value * 2;
  });

  StreamSubscription<int> sub = transformStream.listen((int value){
    print("Transformed data: $value");
  });

  Future.delayed(Duration(seconds: 1), (){
    sub.cancel();
  });

  await for(int value in countStream()){
    print(value);
  }

  // this stream object uses as many anonymous function to the object (map, listen)
  countStream().map((value)=> "Mapped $value").listen((event){
    print(event);
  });

  StreamController<int> ctrl = new StreamController(); // controls the streamable object
  Stream<int> stream = ctrl.stream;

  // write code to listen to the actions in the controller
  stream.listen((value){
    print("Recieved from the controller: $value");
  });

  // add data to the streamable object then close it
  ctrl.add(300);
  ctrl.add(200);
  ctrl.add(100);
  ctrl.add(3);
  ctrl.close();
}
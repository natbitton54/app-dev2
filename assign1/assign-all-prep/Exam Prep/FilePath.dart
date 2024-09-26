void main() async{
  List<String> filePaths = ['file1.txt', 'file2.txt', 'file3.txt'];

 await for(var size in listFiles(filePaths)){
    print("Size $size");
  }
}

Stream<int> listFiles(List<String> files) async* {
  for (var file in files) {
    await Future.delayed(Duration(seconds: 2)); // Simulate delay
    yield file.length;
  }
}

// import 'dart:io';  // For File operations
// import 'dart:async'; // For Future and Stream
//
// // Function to get the size of each file asynchronously using arrow functions
// Stream<int> getFileSizes(List<String> filePaths) async* =>
//     await* Stream.fromIterable(filePaths)
//     .asyncMap((filePath) => File(filePath).length());
//
// void main() async {
// // Sample file paths (update with actual file paths)
// List<String> filePaths = ['file1.txt', 'file2.txt', 'file3.txt'];
//
// // Use the stream to get and print file sizes
// await for (var size in getFileSizes(filePaths)) {
// print('File size: $size bytes');
// }
// }
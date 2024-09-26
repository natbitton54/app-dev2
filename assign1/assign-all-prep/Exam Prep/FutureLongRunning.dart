void main() async{
  await timeoutLargeFiles().then((msg) => print(msg));
}

Future<String> largeFiles() async{
  await Future.delayed(Duration(seconds: 10));

  return "File downloaded successfully";
}

Future<String> timeoutLargeFiles() async{
  try{
    return await largeFiles().timeout(Duration(seconds: 5), onTimeout: () => 'Download timeout, took too long, try again...');
  } catch(e){
     return "Error: $e";
  }
}

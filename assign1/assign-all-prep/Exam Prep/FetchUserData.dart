void main(){
  userData();
}

Future<Map<String, String>> fetchUserData() async{
  Future.delayed(Duration(seconds: 5));
  return  {
    "name": 'nat',
    "age": '18',
  };
}

void userData() async{
  print('fetching user data');
  var userData = await fetchUserData();
  print("User data: $userData");
}

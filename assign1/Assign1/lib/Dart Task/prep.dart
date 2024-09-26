
void main() async{
  List<int> nums = [1, 12, 3, 14, 5, 6, 7, 8, 9, 10, 2];
  List<int> evenNums = nums
      .map((num) => num % 2 == 0 ? num : 0)
      .where((num) => num != 0)
      .toList();
  evenNums.sort();
  print(evenNums);

  int num = 5;
  print(factorial(num));

  UserProfiles user1 = new UserProfiles.usenameEmailProfile(
      email: "nat@gmail.com", username: "natbitton");
  print(user1);
  UserProfiles user2 = new UserProfiles.username(username: "natbitton");
  print(user2);
  UserProfiles user3 = new UserProfiles.fullProfile(
      email: "natbittom@gmail.com",
      username: 'nat4321',
      pfpURL: "www.google.com");
  print(user3);

  print(performMathOperations(3, 0, Op.Division));

  print("Pizza:");
  orderPizza(size: "medium");
  orderPizza(size: "large", crust: "regular", toppings: ['mushrooms', 'tomatoes'], instructions: ['extra sauce']);


  List<int> nums1 = [10,200,1];
  List<double> nums2 = [10,200];

  print(await largest(nums1));
  print(await smallest(nums1));
  print(await sum(nums1));
  print(await sum1(nums2));
  print(await countEven(nums1));
  print(await countOdd(nums1));
  print(await countEven1(nums1));
  print(await countOdd1(nums1));
}

int factorial(int num) {
  if (num == 0) {
    return 1;
  }

  return num * factorial(num - 1);
}

class UserProfiles {
  String? email;
  String? username;
  String? pfpURL;

  UserProfiles.fullProfile(
      {required this.email, required this.username, required this.pfpURL});
  UserProfiles.usenameEmailProfile(
      {required this.email, required this.username})
      : pfpURL = null;
  UserProfiles.username({required this.username})
      : pfpURL = null,
        email = null;

  @override
  String toString() {
    return 'UserProfiles{email: $email, username: $username, pfpURL: $pfpURL}';
  }
}

enum Op {Add, Subtract, Division, Multiplication}

dynamic? performMathOperations(double num1, double num2, [Op? operation]){
  dynamic result;
  switch(operation){
    case Op.Subtract:
       result = num1 - num2;
      break;
    case Op.Multiplication:
      result = num1 * num2;
     break;
    case Op.Division:
     result = num2 != 0 ? num1 / num2 : "Can't divide by 0";
      break;
    default:
       result = num1 + num2;
  }

  return result;
}

void orderPizza({size = 'large', crust = 'regular', List<String?> toppings = const ['cheese', 'olives'],  List<String?> instructions = const ['greek', 'more cheese'] }){
  print("Size: $size");
  print("Crust: $crust");
  print("Toppings: $toppings");
  print("Special Instructions: $instructions");
}

Future<int>? largest(List<int> nums) async{
  await Future.delayed(Duration(seconds: 2));

  return nums.reduce((a,b) => a>b ? a : b);
}

Future<int>? smallest(List<int> nums) async{
  await Future.delayed(Duration(seconds: 2));

  return nums.reduce((a,b) => a<b ? a : b);
}

Future<int>? sum(List<int> nums) async{
  await Future.delayed(Duration(seconds: 2));

  return nums.reduce((a,b) => a+b);
}

Future<double>? sum1(List<double> nums) async{
  await Future.delayed(Duration(seconds: 2));

  double sum = 0;
  for(double num in nums){
    sum += num;
  }

  return sum;
}

Future<int>? countEven(List<int> nums) async {
  await Future.delayed(Duration(seconds: 2));

  int count = 0;

  for (int num in nums) {
    if (num % 2 == 0) {
      count++;
    }
  }

  return count;
}

Future<int>? countOdd(List<int> nums) async {
  await Future.delayed(Duration(seconds: 2));

  int count = 0;

  for (int num in nums) {
    if (num % 2 == 1) {
      count++;
    }
  }

  return count;
}

Future<int>? countOdd1(List<int> nums) async {
  await Future.delayed(Duration(seconds: 2));

  return nums.where((num) => num % 2 == 1).length;
}

Future<int>? countEven1(List<int> nums) async {
  await Future.delayed(Duration(seconds: 2));

  return nums.where((num) => num % 2 == 0).length;
}
void main(){
  var nums = [1,2,3,4];
  List<int> filteredList = nums.where((num) => !num.isEven).map((num) => num*num).toList();
  print(filteredList);
}
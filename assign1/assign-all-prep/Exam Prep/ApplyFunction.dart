void main(){
  var nums = [1,2,3,4];
  print( applyFunction(nums, modifyList));

}

List<int> applyFunction(List<int> nums, Function callBack) {
  return callBack(nums);
}

List<int> modifyList(List<int> nums){
  return nums.map((num) => num * num).toList();
}


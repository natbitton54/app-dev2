void main(){
  List<int> nums = [1,12,3,14,5,6,7,8,9,10,2];
  List<int> evenNums = nums.map((num) => num%2==0 ? num : 0).where((num)=>num!=0).toList();

  evenNums.sort();

  print(evenNums);
}


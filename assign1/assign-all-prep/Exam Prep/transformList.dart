void main(){
  List<String> str = ['hello', 'world'];
  print(transformList(str));
}

// List<String> transformList(List<String> s) {
//   List<String> capitalizedLetters = s.map((str){
//     return str.split('').asMap().entries.map((entry){
//       int i = entry.key;
//       String char = entry.value;
//       return (i % 2 ==0) ? char.toUpperCase() : char.toLowerCase();
//     }).join('');
//   }).toList();
//
//   return capitalizedLetters;
// }

List<String> transformList(List<String> s) {
  List<String> transformed = [];
  for(int i = 0; i<s.length; i++){
    String words = '';
    for(int j = 0; j<s[i].length; j++){
      if(j % 2 == 1){
        words += s[i][j].toUpperCase();
      } else{
        words += s[i][j];
      }
    }
    transformed.add(words);
  }
  return transformed;
}
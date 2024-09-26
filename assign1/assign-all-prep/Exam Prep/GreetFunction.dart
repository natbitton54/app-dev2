void main(){
  greetUser();
  greetUser('John');
  greetUser('John', 'Doe');
}

void greetUser([firstName = 'Guest', lastName = '']) {
  print('Hello, $firstName $lastName');
}
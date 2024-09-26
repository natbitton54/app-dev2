void main(){
  createEamil(domain: 'gmail', username: 'nat');
}

void createEamil({required username, required domain, extension = 'com'}){
  print('${username}@${domain}.$extension');
}
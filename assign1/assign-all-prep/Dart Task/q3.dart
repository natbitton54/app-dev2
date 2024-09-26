class UserProfiles{
  String? email;
  String? username;
  String? pfpURL;

  UserProfiles({required this.email, required this.username, required this.pfpURL});

  UserProfiles.fullProfile({required this.email, required this.username, required this.pfpURL});

  UserProfiles.ProfileEmailAndUsername({required this.email, required this.username}) : pfpURL = null;

  @override
  String toString() {
    return 'UserProfiles{email: $email, username: $username, Profile Picture: $pfpURL}';
  }
}

void main(){
  var user = new UserProfiles(email: 'Nat@gmail.com', username: "natbitton", pfpURL: "https://i.pinimg.com/736x/d1/8b/29/d18b29fafef14c91313ae3bad23ee22f.jpg");
  print("User from default constructor: $user");

  var user2 = new UserProfiles.fullProfile(email: 'Nat@gmail.com', username: "natbitton", pfpURL: "https://i.pinimg.com/736x/d1/8b/29/d18b29fafef14c91313ae3bad23ee22f.jpg");
  print("User from full profile named constructor: $user2");

  var user3 = new UserProfiles.ProfileEmailAndUsername(email: "Nat@gmail.com", username: "natbitton");
  print("User from email and username profile named constructor: $user3");

}
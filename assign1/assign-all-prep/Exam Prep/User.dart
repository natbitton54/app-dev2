class User {
  String username;
  int id;

  // Regular constructor
  User(this.username, this.id);

  static Future<User> fromDatabase(int userId) async {

    await Future.delayed(Duration(seconds: 2));

    return User("username: user$userId", userId);
  }

  @override
  String toString() {
    return 'User{username: $username, id: $id}';
  }

}

void main() async {
  int userId = 1;
  var user = await User.fromDatabase(userId);
  print(user);
}

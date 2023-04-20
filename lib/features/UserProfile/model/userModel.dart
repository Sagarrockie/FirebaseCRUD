class User {
  String id;
  String name;
  String email;
  String gender;
  String profileImage;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    required this.profileImage,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'gender': gender,
      'profileImage': profileImage,
    };
  }
}
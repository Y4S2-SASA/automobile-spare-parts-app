// user class
class AuthUser {
  final String userId;
  final String firstName;
  final String lastName;
  final String imageUrl;
  final String email;

  AuthUser({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.imageUrl,
    required this.email,
  });

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
        'imageUrl': imageUrl,
      };

  factory AuthUser.fromJson(Map<String, dynamic> json) => AuthUser(
        userId: json['userId'],
        email: json['email'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        imageUrl: json['imageUrl'],
      );
}

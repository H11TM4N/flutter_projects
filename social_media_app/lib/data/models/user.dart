// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FirebaseUser {
  final String username;
  final String email;
  final String password;

  const FirebaseUser({
    required this.username,
    required this.email,
    required this.password,
  });

  FirebaseUser.empty()
      : username = '',
        email = '',
        password = '';

  FirebaseUser copyWith({
    String? username,
    String? email,
    String? password,
  }) {
    return FirebaseUser(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'email': email,
      'password': password,
    };
  }

  factory FirebaseUser.fromMap(Map<String, dynamic> map) {
    return FirebaseUser(
      username: map['username'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FirebaseUser.fromJson(String source) =>
      FirebaseUser.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'FirebaseUser(username: $username, email: $email, password: $password)';

  @override
  bool operator ==(covariant FirebaseUser other) {
    if (identical(this, other)) return true;

    return other.username == username &&
        other.email == email &&
        other.password == password;
  }

  @override
  int get hashCode => username.hashCode ^ email.hashCode ^ password.hashCode;
}

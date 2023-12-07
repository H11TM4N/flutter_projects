// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FirebaseUser {
  final String username;
  final String email;

  const FirebaseUser({
    required this.username,
    required this.email,
  });

  FirebaseUser.empty()
      : username = '',
        email = '';

  FirebaseUser copyWith({
    String? username,
    String? email,
  }) {
    return FirebaseUser(
      username: username ?? this.username,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'email': email,
    };
  }

  factory FirebaseUser.fromMap(Map<String, dynamic> map) {
    return FirebaseUser(
      username: map['username'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FirebaseUser.fromJson(String source) =>
      FirebaseUser.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'FirebaseUser(username: $username, email: $email)';

  @override
  bool operator ==(covariant FirebaseUser other) {
    if (identical(this, other)) return true;

    return other.username == username && other.email == email;
  }

  @override
  int get hashCode => username.hashCode ^ email.hashCode;
}

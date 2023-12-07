// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:social_media_app/data/data.dart';

// class LocalUser {
//   final String id;
//   final FirebaseUser user;

//   const LocalUser({
//     required this.id,
//     required this.user,
//   });

//   LocalUser.empty()
//       : id = '',
//         user = FirebaseUser.empty();

//   LocalUser copyWith({
//     String? id,
//     FirebaseUser? user,
//   }) {
//     return LocalUser(
//       id: id ?? this.id,
//       user: user ?? this.user,
//     );
//   }
// }

// final userProvider = StateNotifierProvider<UserNotifier, LocalUser>((ref) {
//   return UserNotifier();
// });

// class UserNotifier extends StateNotifier<LocalUser> {
//   UserNotifier() : super(LocalUser.empty());

//   final CollectionReference _userCollection =
//       FirebaseFirestore.instance.collection('users');

//   addUserToDataBase(String username, String email) async {
//     await _userCollection.doc(email).set({
//       FirebaseUser.empty()
//           .copyWith(
//             username: username,
//             email: email,
//           )
//           .toMap(),
//     });
//   }
// }

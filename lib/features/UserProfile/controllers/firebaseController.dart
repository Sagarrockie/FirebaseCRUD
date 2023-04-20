import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/userModel.dart';

final CollectionReference usersCollection =
FirebaseFirestore.instance.collection('users');

// Create a new user in Firebase
Future<void> createUser(User user) async {
  await usersCollection.doc(user.id).set(user.toMap());
}

// Read all users from Firebase
Stream<List<User>> readUsers() {
  return usersCollection.snapshots().map((querySnapshot) {
    List<User> users = [];
    querySnapshot.docs.forEach((documentSnapshot) {
      users.add(User(
        id: documentSnapshot['id'],
        name: documentSnapshot['name'],
        email: documentSnapshot['email'],
        gender: documentSnapshot['gender'],
        profileImage: documentSnapshot['profileImage'],
      ));
    });
    return users;
  });
}

// Update a user in Firebase
Future<void> updateUser(User user) async {
  await usersCollection.doc(user.id).update(user.toMap());
}

// Delete a user from Firebase
Future<void> deleteUser(String userId) async {
  await usersCollection.doc(userId).delete();
}

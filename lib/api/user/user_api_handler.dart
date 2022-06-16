import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ffuf_final_capstone/models/user/_export.dart';

class UserApiHandler {

  Future<List<User>> fetchUsers() async {
    final users = FirebaseFirestore.instance.collection('users')
        .get()
        .then((value) => value.docs.map((e) => User.fromJson(e.data())).toList(),);

    return users;
  }
}

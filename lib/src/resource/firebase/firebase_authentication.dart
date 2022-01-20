import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthentication {
  FirebaseAuthentication._();
  static loginEmail(String email, String password) async {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: email, password: password);
    if (userCredential.user!.email != null) return true;
    return false;
  }
}
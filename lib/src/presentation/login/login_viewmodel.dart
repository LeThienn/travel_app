import 'package:flutter/material.dart';
import 'package:travel_app/src/presentation/base/base.dart';
import 'package:travel_app/src/resource/firebase/firebase_authentication.dart';

class LoginViewModel extends BaseViewModel {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  init() {}
  checkLogin() async {
    final checkUserExits = await FirebaseAuthentication.loginEmail(
        emailController.text.trim(), passWordController.text.trim());
    if (checkUserExits == true) {
      print('Login thanh cong');
    } else {
      print('mat khau va tai khoan khong hop le');
    }
  }
}

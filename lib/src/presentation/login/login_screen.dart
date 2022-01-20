import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/src/presentation/base/base.dart';
import 'package:travel_app/src/presentation/login/login_viewmodel.dart';

import 'component/widget_button.dart';
import 'component/widget_input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _MyHomePageState();
}

LoginViewModel? _viewModel;

class _MyHomePageState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return BaseWidget<LoginViewModel>(
      onViewModelReady: (viewModel) {
        _viewModel = (viewModel?..init())!;
      },
      viewModel: LoginViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: _buildBodyMobile(),
        );
      },
    );
  }
}

Widget _buildBodyMobile() {
  return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 100.h),
              _buildImage(),
              SizedBox(height: 20.h),
              Text(
                "Welcome Back",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30.sp,
                    fontStyle: FontStyle.normal,
                    decoration: TextDecoration.none),
              ),
              Text(
                "Sign to continue",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Colors.grey,
                    fontSize: 15.sp,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 50.h,
              ),
              _buildEmail(),
              SizedBox(
                height: 15.h,
              ),
              _buildPassword(),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontStyle: FontStyle.normal,
                        color: Colors.blue,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
              SizedBox(height: 35.h),
              _buttonLogin(),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have account?",
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                  ),
                  TextButton(
                    // chuyển màn hình
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpScreen()));
                    },
                    style: TextButton.styleFrom(
                        primary: Colors.blue,
                        textStyle: TextStyle(fontSize: 13.sp)),
                    child: const Text("Create a new account"),
                  ),
                ],
              )
            ],
          ),
        ),
      ));
}

Widget _buildImage() {
  return SizedBox(
    height: 135.h,
    child: Image.network(
        'https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-image-182145777.jpg'),
  );
}

Widget _buildEmail() {
  return WidgetInput(
      name: "Email",
      obscureText: false,
      iconData: Icons.email_outlined,
      controller: _viewModel!.emailController);
}

Widget _buildPassword() {
  return WidgetInput(
      name: "Password",
      obscureText: true,
      iconData: Icons.lock_outline,
      controller: _viewModel!.passWordController);
}

Widget _buttonLogin() {
  return WidgetButton(
    name: "Login",
    check: _viewModel!.checkLogin(),
  );
}

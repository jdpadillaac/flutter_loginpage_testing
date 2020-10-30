import 'package:flutter/material.dart';
import 'package:flutter_login_testing/presentation/pages/login/login_bottom.dart';
import 'package:flutter_login_testing/presentation/pages/login/login_form.dart';
import 'package:flutter_login_testing/presentation/pages/login/login_header.dart';

class LoginPage extends StatelessWidget {
  static String routeName = 'loginPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              LoginHeader(),
              LoginForm(),
              PageButtom(),
            ],
          ),
        ),
      ),
    );
  }
}

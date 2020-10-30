import 'package:flutter/material.dart';
import 'package:flutter_login_testing/constants.dart';
import 'package:flutter_login_testing/presentation/pages/home/home_page.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40),
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            _inputEmail(),
            SizedBox(height: 5),
            _inputPassword(),
            SizedBox(height: 25),
            _sigInBoton(context),
          ],
        ),
      ),
    );
  }

  Row _sigInBoton(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Ingresar',
            style: TextStyle(
              color: appGreyColor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                Navigator.popAndPushNamed(context, Homepage.routeName);
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  // color: appGreyColor,
                  gradient: LinearGradient(colors: [
                    Color(0xFF72767c),
                    // Color(0xFF525865),
                    Color(0xFF454D57)
                  ]),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  TextFormField _inputEmail() {
    return TextFormField(
      cursorColor: appGreyColor,
      style: TextStyle(
        color: appGreyColor,
        fontSize: 20,
        fontWeight: FontWeight.w800,
      ),
      decoration: InputDecoration(
        labelText: 'Email',
        focusColor: Colors.grey,
        labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  TextFormField _inputPassword() {
    return TextFormField(
      cursorColor: appGreyColor,
      obscureText: true,
      style: TextStyle(
        color: appGreyColor,
        fontSize: 20,
        fontWeight: FontWeight.w800,
      ),
      decoration: InputDecoration(
        labelText: 'Contraseña',
        focusColor: Colors.grey,
        labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_login_testing/constants.dart';
import 'package:flutter_login_testing/presentation/pages/initial_page/initial_page.dart';

class LoginHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      color: appGreyColor,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            _backBoton(context),
            SizedBox(height: 80),
            _subtitle(),
            _title(),
          ],
        ),
      ),
    );
  }

  Container _title() {
    return Container(
      child: Text(
        'Inicia sesión',
        style: TextStyle(color: Colors.white, fontSize: 50),
      ),
    );
  }

  Container _subtitle() {
    return Container(
      child: Text(
        'Bienvenido',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }

  Row _backBoton(BuildContext context) {
    return Row(
      children: [
        InkWell(
          child: Container(
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
              size: 40,
            ),
          ),
          onTap: () {
            Navigator.popAndPushNamed(context, InitialPage.routeName);
          },
        ),
      ],
    );
  }
}

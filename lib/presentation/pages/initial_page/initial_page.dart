import 'package:flutter/material.dart';
import 'package:flutter_login_testing/presentation/pages/login/login_page.dart';

class InitialPage extends StatelessWidget {
  static String routeName = 'initial';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: double.infinity,
        color: Color(0xFF4E545F),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            RaisedButton(
              child: Text('Iniciar Sesión'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, LoginPage.routeName);
              },
            )
          ],
        ),
      ),
    ));
  }
}

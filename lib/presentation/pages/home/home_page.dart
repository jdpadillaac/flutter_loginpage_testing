import 'package:flutter/material.dart';
import 'package:flutter_login_testing/constants.dart';
import 'package:flutter_login_testing/presentation/pages/initial_page/initial_page.dart';

class Homepage extends StatelessWidget {
  static String routeName = 'homePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appGreyColor,
        title: Text('Pagina principal'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Pagina principal',
              style: TextStyle(fontSize: 25),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, InitialPage.routeName);
              },
              child: Text('Cerrara sesión'),
              color: appGreyColor,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

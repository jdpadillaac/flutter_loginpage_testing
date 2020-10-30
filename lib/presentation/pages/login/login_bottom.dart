import 'package:flutter/material.dart';
import 'package:flutter_login_testing/constants.dart';

class PageButtom extends StatelessWidget {
  const PageButtom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = TextStyle(
      color: appGreyColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
    );

    return Container(
      height: 90,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Text(
                  'Registrar',
                  style: textStyle,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.centerRight,
                child: Text('Recordar contraseña?', style: textStyle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

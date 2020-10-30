import 'package:flutter/material.dart';
import 'package:flutter_login_testing/presentation/pages/initial_page/initial_page.dart';
import 'package:flutter_login_testing/presentation/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      debugShowCheckedModeBanner: false,
      title: 'Login testing',
      routes: appRoutes,
      initialRoute: InitialPage.routeName,
    );
  }
}

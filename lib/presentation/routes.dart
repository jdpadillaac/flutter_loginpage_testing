import 'package:flutter/material.dart';
import 'package:flutter_login_testing/presentation/pages/home/home_page.dart';
import 'package:flutter_login_testing/presentation/pages/initial_page/initial_page.dart';
import 'package:flutter_login_testing/presentation/pages/login/login_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  InitialPage.routeName: (context) => InitialPage(),
  LoginPage.routeName: (context) => LoginPage(),
  Homepage.routeName: (context) => Homepage()
};

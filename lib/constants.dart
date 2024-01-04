// Flutter imports:
// ignore_for_file: always_use_package_imports, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:qr_innovations/forgotpassword.dart';
import 'package:qr_innovations/signup.dart';

// Project imports:
import 'home_page.dart';
import 'login_page.dart';

class PageRouteNames {
  static const String login = '/login';
  static const String home = '/home';
  static const String signup = '/signup';
  static const String forgotpassword = '/forgotpassword';
}

const TextStyle textStyle = TextStyle(
  color: Colors.black,
  fontSize: 13,
  decoration: TextDecoration.none,
);

Map<String, WidgetBuilder> routes = {
  PageRouteNames.login: (context) => const LoginPage(),
  PageRouteNames.home: (context) => const HomePage(),
  // PageRouteNames.signup: (context) => const Signup_screen(),
  PageRouteNames.forgotpassword: (context) => const ForgotPassword(),
};

class UserInfo {
  String id = '';
  String name = '';

  UserInfo({
    required this.id,
    required this.name,
  });

  bool get isEmpty => id.isEmpty;

  UserInfo.empty();
}

UserInfo currentUser = UserInfo.empty();
const String cacheUserIDKey = 'cache_user_id_key';

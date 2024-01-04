// ignore_for_file: use_build_context_synchronously, avoid_positional_boolean_parameters, unnecessary_null_comparison, lines_longer_than_80_chars
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_innovations/api_token_services/api_tokens.dart';
import 'package:qr_innovations/api_token_services/http_services.dart';
import 'package:qr_innovations/constants.dart';
import 'package:qr_innovations/designs/alerts_design.dart';
import 'package:qr_innovations/designs/navigation_style.dart';
import 'package:qr_innovations/home_page.dart';
import 'package:qr_innovations/model/errormodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

final loginProvider = ChangeNotifierProvider<LoginProvider>((ref) {
  return LoginProvider();
});

class LoginProvider extends ChangeNotifier {
  bool loading = false;
  String userIdError = '';
  String passwordError = '';

  void setLoading(bool response) {
    loading = response;
    notifyListeners();
  }

  Future<void> login({
    required BuildContext context,
    required String userID,
    required String password,
  }) async {
    setLoading(true);
    final sharedPreferences = await SharedPreferences.getInstance();
    final url = '${Api.apiUrl}/user_mobileAuth';
    final body = utf8.encode(
      json.encode({
        'userId': userID,
        'password': password,
      }),
    );
    final response = await HttpService.initialUTFPostApi(url: url, body: body);
    if (response.$1 == 200) {
      await sharedPreferences.setString(
        'token',
        response.$2['token'] as String,
      );
      await sharedPreferences.setString(
        cacheUserIDKey,
        userID,
      );
      currentUser.id = userID;
      currentUser.name = password;
      Alerts.successAlert(context, '${response.$2['message']}');

      await Navigator.pushAndRemoveUntil(
        context,
        RouteDesign(route: const HomePage()),
        (route) => false,
      );
    } else {
      Alerts.errorAlert(context, '${response.$2['message']}');
    }
    setLoading(false);
  }
}

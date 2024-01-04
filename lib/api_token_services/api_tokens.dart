import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppIdVersion {
  static String androidId = '';

  static String iosId = '';

  static String version = 'v 1.0.0';
}

class Api {
  static String mainUrl = 'http://203.161.63.74:3001';

  static String apiUrl = mainUrl;

  static String mediaUrl = '$mainUrl/storage';
}

class Token {
  static String token = '';

  static Map<String, String> headers = {};

  static String phoneToken = '';

  static final FirebaseMessaging _firebaseMessaging =
      FirebaseMessaging.instance;

  static Future<void> getAuthToken() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final storedToken = sharedPreferences.getString('token');
    token = '$storedToken';
    headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };
  }

  static Future<void> getPhoneToken() async {
    await _firebaseMessaging.getToken().then((token) {
      phoneToken = '$token';
    });
  }
}

class KeyboardRule {
  static List<TextInputFormatter> numberInputRule = [
    FilteringTextInputFormatter.deny('.'),
    FilteringTextInputFormatter.deny(','),
    FilteringTextInputFormatter.deny('-'),
    FilteringTextInputFormatter.deny(' '),
  ];
}

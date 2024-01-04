import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart';
import 'package:qr_innovations/api_token_services/api_tokens.dart';

class HttpService {
  static Future<(int, Map<String, dynamic>)> initialGetApi({
    required String url,
  }) async {
    try {
      final response = await get(Uri.parse(url));
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        return (response.statusCode, jsonResponse as Map<String, dynamic>);
      } else {
        log('Error');
        log('Url: $url');
        log('Response: ${response.body}');
        final jsonResponse = json.decode(response.body);
        return (response.statusCode, jsonResponse as Map<String, dynamic>);
      }
    } on SocketException {
      log('Error');
      log('Url: $url');
      log('No Internet Connect');
      return (0, {'noNetworkAvailable': true});
    }
  }

  static Future<(int, Map<String, dynamic>)> initialPostApi({
    required String url,
    required Object body,
  }) async {
    try {
      final response = await post(Uri.parse(url), body: body);
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        return (response.statusCode, jsonResponse as Map<String, dynamic>);
      } else {
        log('Error');
        log('Url: $url');
        log('Body: $body');
        log('Response: ${response.body}');
        final jsonResponse = json.decode(response.body);
        return (response.statusCode, jsonResponse as Map<String, dynamic>);
      }
    } on SocketException {
      log('Error');
      log('Url: $url');
      log('Body: $body');
      log('No Internet Connect');
      return (0, {'noNetworkAvailable': true});
    }
  }

  static Future<(int, Map<String, dynamic>)> initialUTFPostApi({
    required String url,
    required Object body,
  }) async {
    try {
      final response = await post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: body,
      );
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        return (response.statusCode, jsonResponse as Map<String, dynamic>);
      } else {
        log('Error');
        log('Url: $url');
        log('Body: $body');
        log('Response: ${response.body}');
        final jsonResponse = json.decode(response.body);
        return (response.statusCode, jsonResponse as Map<String, dynamic>);
      }
    } on SocketException {
      log('Error');
      log('Url: $url');
      log('Body: $body');
      log('No Internet Connect');
      return (0, {'noNetworkAvailable': true});
    }
  }

  static Future<(int, Map<String, dynamic>)> getApi({
    required String url,
  }) async {
    try {
      final response = await get(
        Uri.parse(url),
        headers: Token.headers,
      );
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        return (response.statusCode, jsonResponse as Map<String, dynamic>);
      } else {
        log('Error');
        log('Url: $url');
        log('Response: ${response.body}');
        final jsonResponse = json.decode(response.body);
        return (response.statusCode, jsonResponse as Map<String, dynamic>);
      }
    } on SocketException {
      log('Error');
      log('Url: $url');
      log('No Internet Connect');
      return (0, {'noNetworkAvailable': true});
    }
  }

  static Future<(int, Map<String, dynamic>)> postApi({
    required String url,
    required Object body,
  }) async {
    try {
      final response = await post(
        Uri.parse(url),
        headers: Token.headers,
        body: body,
      );
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        return (response.statusCode, jsonResponse as Map<String, dynamic>);
      } else {
        log('Error');
        log('Url: $url');
        log('Body: $body');
        log('Response: ${response.body}');
        final jsonResponse = json.decode(response.body);
        return (response.statusCode, jsonResponse as Map<String, dynamic>);
      }
    } on SocketException {
      log('Error');
      log('Url: $url');
      log('Body: $body');
      log('No Internet Connect');
      return (0, {'noNetworkAvailable': true});
    }
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_innovations/api_token_services/api_tokens.dart';
import 'package:qr_innovations/api_token_services/http_services.dart';
import 'package:qr_innovations/model/profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

final profileProvider = ChangeNotifierProvider<ProfileProvider>((ref) {
  return ProfileProvider();
});

class ProfileProvider extends ChangeNotifier {
  bool loading = false;
  UserDetails? userDetails;

  void setLoading(bool response) {
    loading = response;
    notifyListeners();
  }

  Future<void> getProfile({required BuildContext context}) async {
    setLoading(true);
    await Token.getAuthToken();
    final url = '${Api.apiUrl}/user_mobile_details';
    final response = await HttpService.getApi(url: url);
    if (response.$1 == 200) {
      final details = ProfileModel.fromJson(response.$2);
      userDetails = details.userDetails;
    } else {}
    notifyListeners();
  }
}

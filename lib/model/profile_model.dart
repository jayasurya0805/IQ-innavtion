class ProfileModel {
  ProfileModel({this.userDetails, this.message});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    userDetails = json['userDetails'] != null
        ? UserDetails.fromJson(json['userDetails'] as Map<String, dynamic>)
        : null;
    message = json['message'] as String;
  }

  UserDetails? userDetails;
  String? message;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (userDetails != null) {
      data['userDetails'] = userDetails!.toJson();
    }
    data['message'] = message;
    return data;
  }
}

class UserDetails {
  UserDetails({
    this.userId,
    this.userName,
    this.userEmail,
    this.userMobNo,
    this.userZegoId,
    this.userQrCode,
    this.userLoginId,
    this.userPassword,
  });

  UserDetails.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'] as String;
    userName = json['user_name'] as String;
    userEmail = json['user_email'] as String;
    userMobNo = json['user_mobNo'] as String;
    userZegoId = json['user_zego_id'] as String;
    userQrCode = json['User_QrCode'] != null
        ? UserQrCode.fromJson(json['User_QrCode'] as Map<String, dynamic>)
        : null;
    userLoginId = json['user_login_id'] as String;
    userPassword = json['user_password'] as String;
  }

  String? userId;
  String? userName;
  String? userEmail;
  String? userMobNo;
  String? userZegoId;
  UserQrCode? userQrCode;
  String? userLoginId;
  String? userPassword;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['user_id'] = userId;
    data['user_name'] = userName;
    data['user_email'] = userEmail;
    data['user_mobNo'] = userMobNo;
    data['user_zego_id'] = userZegoId;
    if (userQrCode != null) {
      data['User_QrCode'] = userQrCode!.toJson();
    }
    data['user_login_id'] = userLoginId;
    data['user_password'] = userPassword;
    return data;
  }
}

class UserQrCode {
  UserQrCode({
    this.type,
    this.data,
  });

  UserQrCode.fromJson(Map<String, dynamic> json) {
    type = json['type'] as String;
    if (json['data'] != null) {
      data = <int>[];
      json['data'].forEach((dynamic v) {
        data!.add(v as int);
      });
    }
  }

  String? type;
  List<int>? data;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['data'] = this.data;
    return data;
  }
}

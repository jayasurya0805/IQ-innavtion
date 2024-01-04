
// ignore_for_file: eol_at_end_of_file

class ErrorModel {
  ErrorModel({this.success, this.message});

  ErrorModel.fromJson(Map<String, dynamic> json) {
    success = json['success'] as bool?;
    message = json['message'] as String?;
  }
  bool? success;
  String? message;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    return data;
  }
}
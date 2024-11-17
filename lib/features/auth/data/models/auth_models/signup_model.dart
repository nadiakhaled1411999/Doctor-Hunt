class SignUpModel {
  final String? message;
  final Data? data;
  final bool? status;
  final int? code;

  SignUpModel({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });
  factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return SignUpModel(
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        status: json["status"],
        code: json["code"]);
  }
}

class Data {
  String? token;
  String? username;

  Data({
    required this.token,
    required this.username,
  });
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(token: json["token"], username: json["username"]);
  }
}

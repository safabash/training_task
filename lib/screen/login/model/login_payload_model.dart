class LoginPayloadModel {
  LoginPayloadModel({
    required this.mobile,
    required this.password,
  });

  String mobile;
  String password;

  factory LoginPayloadModel.fromJson(Map<String, dynamic> json) =>
      LoginPayloadModel(
        mobile: json["mobile"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "mobile": mobile,
        "password": password,
      };
}

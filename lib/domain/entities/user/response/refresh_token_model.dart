class RefreshTokenModel {
  String accessToken;
  String refreshToken;
  String tokenType;
  int id;
  bool? isSelected; 

  RefreshTokenModel({
    required this.accessToken,
    required this.refreshToken,
    required this.tokenType,
    required this.id,
    this.isSelected,
  });

  factory RefreshTokenModel.fromJson(Map<String, dynamic> json) =>
      RefreshTokenModel(
        accessToken: json["access_token"],
        refreshToken: json["refresh_token"],
        tokenType: json["token_type"],
        id: json["id"],
      );
}

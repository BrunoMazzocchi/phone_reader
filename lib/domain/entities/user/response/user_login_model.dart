class UserLoginModel { 
  String token; 
  String type; 
  String refreshToken;
  String username; 
  int id; 
  String email; 
  List<String> roles;

  UserLoginModel({required this.token, required this.type, required this.refreshToken, required this.username, required this.id, required this.email, required this.roles});

  factory UserLoginModel.fromJson(Map<String, dynamic> json) {
    return UserLoginModel(
      token: json['token'], 
      type: json['type'], 
      refreshToken: json['refreshToken'], 
      username: json['username'], 
      id: json['id'], 
      email: json['email'], 
      roles: json['roles'] != null ? (json['roles'] as List).map((i) => i.toString()).toList() : [], 
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['token'] = token; 
    data['type'] = type; 
    data['refreshToken'] = refreshToken; 
    data['username'] = username; 
    data['id'] = id; 
    data['email'] = email; 
    data['roles'] = roles; 
    return data;
  }
}
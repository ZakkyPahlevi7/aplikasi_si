// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.message,
    this.user,
    this.token,
  });

  String? message;
  User? user;
  String? token;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    message: json["message"],
    user: User.fromJson(json["user"]),
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "user": user!.toJson(),
    "token": token,
  };
}

class User {
  User({
    required this.id,
    required this.foto,
    required this.nama,
    required this.kelas,
    required this.link,
  });

  int id;
  String foto;
  String nama;
  String kelas;
  String link;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    foto: json["foto"],
    nama: json["nama"],
    kelas: json["kelas"],
    link: json["link"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "foto": foto,
    "nama": nama,
    "kelas": kelas,
    "link": link,
  };
}

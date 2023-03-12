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
  List<User>? user;
  String? token;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    message: json["message"],
    user: List<User>.from(json["user"].map((x) => User.fromJson(x))),
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "user": List<dynamic>.from(user!.map((x) => x.toJson())),
    "token": token,
  };
}

class User {
  User({
    required this.id,
    required this.foto,
    required this.nama,
    required this.password,
    required this.kelas,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.link,
    required this.spps,
  });

  int id;
  String foto;
  String nama;
  String password;
  String kelas;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  String link;
  List<UserSpp> spps;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    foto: json["foto"],
    nama: json["nama"],
    password: json["password"],
    kelas: json["kelas"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    link: json["link"],
    spps: List<UserSpp>.from(json["spps"].map((x) => UserSpp.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "foto": foto,
    "nama": nama,
    "password": password,
    "kelas": kelas,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
    "link": link,
    "spps": List<dynamic>.from(spps.map((x) => x.toJson())),
  };
}

class UserSpp {
  UserSpp({
    required this.tahun,
    required this.spp,
  });

  String tahun;
  List<SppSpp> spp;

  factory UserSpp.fromJson(Map<String, dynamic> json) => UserSpp(
    tahun: json["tahun"],
    spp: List<SppSpp>.from(json["spp"].map((x) => SppSpp.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "tahun": tahun,
    "spp": List<dynamic>.from(spp.map((x) => x.toJson())),
  };
}

class SppSpp {
  SppSpp({
    required this.id,
    required this.nisId,
    required this.nisType,
    required this.tahunAjaran,
    required this.tanggalTagihan,
    required this.tagihan,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  int id;
  String nisId;
  String nisType;
  String tahunAjaran;
  DateTime tanggalTagihan;
  String tagihan;
  String status;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory SppSpp.fromJson(Map<String, dynamic> json) => SppSpp(
    id: json["id"],
    nisId: json["NIS_id"],
    nisType: json["NIS_type"],
    tahunAjaran: json["tahun_ajaran"],
    tanggalTagihan: DateTime.parse(json["tanggal_tagihan"]),
    tagihan: json["tagihan"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "NIS_id": nisId,
    "NIS_type": nisType,
    "tahun_ajaran": tahunAjaran,
    "tanggal_tagihan": "${tanggalTagihan.year.toString().padLeft(4, '0')}-${tanggalTagihan.month.toString().padLeft(2, '0')}-${tanggalTagihan.day.toString().padLeft(2, '0')}",
    "tagihan": tagihan,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

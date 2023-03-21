// To parse this JSON data, do
//
//     final osisModel = osisModelFromJson(jsonString);

import 'dart:convert';

OsisModel osisModelFromJson(String str) => OsisModel.fromJson(json.decode(str));

String osisModelToJson(OsisModel data) => json.encode(data.toJson());

class OsisModel {
  OsisModel({
    this.status,
    this.data,
  });

  String? status;
  List<OsisData>? data;

  factory OsisModel.fromJson(Map<String, dynamic> json) => OsisModel(
    status: json["status"],
    data: List<OsisData>.from(json["data"].map((x) => OsisData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class OsisData {
  OsisData({
    this.id,
    this.foto,
    this.nama,
    this.jabatan,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.link,
  });

  int? id;
  String? foto;
  String? nama;
  String? jabatan;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;
  String? link;

  factory OsisData.fromJson(Map<String, dynamic> json) => OsisData(
    id: json["id"],
    foto: json["foto"],
    nama: json["nama"],
    jabatan: json["jabatan"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    link: json["link"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "foto": foto,
    "nama": nama,
    "jabatan": jabatan,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "deleted_at": deletedAt,
    "link": link,
  };
}

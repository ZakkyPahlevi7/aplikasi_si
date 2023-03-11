// To parse this JSON data, do
//
//     final sekolahModel = sekolahModelFromJson(jsonString);

import 'dart:convert';

SekolahModel sekolahModelFromJson(String str) => SekolahModel.fromJson(json.decode(str));

String sekolahModelToJson(SekolahModel data) => json.encode(data.toJson());

class SekolahModel {
  SekolahModel({
    required this.status,
    required this.data,
  });

  String status;
  List<SekolahData> data;

  factory SekolahModel.fromJson(Map<String, dynamic> json) => SekolahModel(
    status: json["status"],
    data: List<SekolahData>.from(json["data"].map((x) => SekolahData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class SekolahData {
  SekolahData({
    required this.id,
    required this.foto,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.link,
  });

  int id;
  String foto;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic deletedAt;
  String link;

  factory SekolahData.fromJson(Map<String, dynamic> json) => SekolahData(
    id: json["id"],
    foto: json["foto"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    deletedAt: json["deleted_at"],
    link: json["link"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "foto": foto,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "deleted_at": deletedAt,
    "link": link,
  };
}

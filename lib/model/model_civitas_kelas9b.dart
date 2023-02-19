// To parse this JSON data, do
//
//     final apiKelas9B = apiKelas9BFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Siswa9BModel apiKelas9BFromJson(String str) =>
    Siswa9BModel.fromJson(json.decode(str));

String apiKelas9BToJson(Siswa9BModel data) => json.encode(data.toJson());

class Siswa9BModel {
  Siswa9BModel({
    this.status,
    this.data,
  });

  String? status;
  List<Siswa9BData>? data;

  factory Siswa9BModel.fromJson(Map<String, dynamic> json) => Siswa9BModel(
        status: json["status"],
        data: List<Siswa9BData>.from(json["data"].map((x) => Siswa9BData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Siswa9BData {
  Siswa9BData({
    this.id,
    this.foto,
    this.nama,
    this.kelas,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int? id;
  String? foto;
  String? nama;
  String? kelas;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;

  factory Siswa9BData.fromJson(Map<String, dynamic> json) => Siswa9BData(
        id: json["id"],
        foto: json["foto"],
        nama: json["nama"],
        kelas: json["kelas"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "foto": foto,
        "nama": nama,
        "kelas": kelas,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
      };
}
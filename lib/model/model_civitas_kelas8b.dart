// To parse this JSON data, do
//
//     final siswa8BModel = siswa8BModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Siswa8BModel siswa8BModelFromJson(String str) =>
    Siswa8BModel.fromJson(json.decode(str));

String siswa8BModelToJson(Siswa8BModel data) => json.encode(data.toJson());

class Siswa8BModel {
  Siswa8BModel({
    required this.status,
    required this.data,
  });

  String status;
  List<Siswa8BData> data;

  factory Siswa8BModel.fromJson(Map<String, dynamic> json) => Siswa8BModel(
        status: json["status"],
        data: List<Siswa8BData>.from(
            json["data"].map((x) => Siswa8BData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Siswa8BData {
  Siswa8BData({
    required this.id,
    required this.foto,
    required this.nama,
    required this.kelas,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  int id;
  String foto;
  String nama;
  String kelas;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory Siswa8BData.fromJson(Map<String, dynamic> json) => Siswa8BData(
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
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
      };
}

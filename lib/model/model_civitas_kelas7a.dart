// To parse this JSON data, do
//
//     final apiKelas7A = apiKelas7AFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Siswa7AModel apiKelas7AFromJson(String str) => Siswa7AModel.fromJson(json.decode(str));

String apiKelas7AToJson(Siswa7AModel data) => json.encode(data.toJson());

class Siswa7AModel {
    Siswa7AModel({
        this.status,
        this.data,
    });

    String? status;
    List<Siswa7AData>? data;

    factory Siswa7AModel.fromJson(Map<String, dynamic> json) => Siswa7AModel(
        status: json["status"],
        data: List<Siswa7AData>.from(json["data"].map((x) => Siswa7AData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Siswa7AData {
    Siswa7AData({
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

    factory Siswa7AData.fromJson(Map<String, dynamic> json) => Siswa7AData(
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
// To parse this JSON data, do
//
//     final apiKelas9A = apiKelas9AFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Siswa9AModel apiKelas9AFromJson(String str) => Siswa9AModel.fromJson(json.decode(str));

String apiKelas9AToJson(Siswa9AModel data) => json.encode(data.toJson());

class Siswa9AModel {
    Siswa9AModel({
       this.status,
       this.data,
    });

    String? status;
    List<Siswa9AData>? data;

    factory Siswa9AModel.fromJson(Map<String, dynamic> json) => Siswa9AModel(
        status: json["status"],
        data: List<Siswa9AData>.from(json["data"].map((x) => Siswa9AData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Siswa9AData {
    Siswa9AData({
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

    factory Siswa9AData.fromJson(Map<String, dynamic> json) => Siswa9AData(
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
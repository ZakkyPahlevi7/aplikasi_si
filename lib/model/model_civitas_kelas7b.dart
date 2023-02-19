// To parse this JSON data, do
//
//     final apiKelas7B = apiKelas7BFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Siswa7BModel apiKelas7BFromJson(String str) => Siswa7BModel.fromJson(json.decode(str));

String apiKelas7BToJson(Siswa7BModel data) => json.encode(data.toJson());

class Siswa7BModel {
    Siswa7BModel({
      this.status,
      this.data,
    });

    String? status;
    List<Siswa7BData>? data;

    factory Siswa7BModel.fromJson(Map<String, dynamic> json) => Siswa7BModel(
        status: json["status"],
        data: List<Siswa7BData>.from(json["data"].map((x) => Siswa7BData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Siswa7BData {
    Siswa7BData({
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

    factory Siswa7BData.fromJson(Map<String, dynamic> json) => Siswa7BData(
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

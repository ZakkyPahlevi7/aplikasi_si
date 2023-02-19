// To parse this JSON data, do
//
//     final apiKelas8B = apiKelas8BFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Siswa8BModel apiKelas8BFromJson(String str) => Siswa8BModel.fromJson(json.decode(str));

String apiKelas8BToJson(Siswa8BModel data) => json.encode(data.toJson());

class Siswa8BModel {
    Siswa8BModel({
        this.status,
        this.data,
    });

    String? status;
    List<Siswa8BData>? data;

    factory Siswa8BModel.fromJson(Map<String, dynamic> json) => Siswa8BModel(
        status: json["status"],
        data: List<Siswa8BData>.from(json["data"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x)),
    };
}

class Siswa8BData {
    Siswa8BData({
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

    factory Siswa8BData.fromJson(Map<String, dynamic> json) =>
        Siswa8BData(
            id: json["id"],
            foto: json["foto"],
            nama: json["nama"],
            kelas: json["kelas"],
            createdAt: DateTime.parse(json["created_at"]),
            updatedAt: DateTime.parse(json["updated_at"]),
            deletedAt: json["deleted_at"],
        );

    Map<String, dynamic> toJson() =>
        {
            "id": id,
            "foto": foto,
            "nama": nama,
            "kelas": kelas,
            "created_at": createdAt!.toIso8601String(),
            "updated_at": updatedAt!.toIso8601String(),
            "deleted_at": deletedAt,
        };
}
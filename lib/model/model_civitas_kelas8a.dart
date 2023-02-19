// To parse this JSON data, do
//
//     final apiKelas8A = apiKelas8AFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Siswa8AModel apiKelas8AFromJson(String str) => Siswa8AModel.fromJson(json.decode(str));

String apiKelas8AToJson(Siswa8AModel data) => json.encode(data.toJson());

class Siswa8AModel {
    Siswa8AModel({
        this.status,
        this.data,
    });

    String? status;
    List<Siswa8AData>? data;

    factory Siswa8AModel.fromJson(Map<String, dynamic> json) => Siswa8AModel(
        status: json["status"],
        data: List<Siswa8AData>.from(json["data"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x)),
    };
}


class Siswa8AData {
    Siswa8AData({
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

    factory Siswa8AData.fromJson(Map<String, dynamic> json) => Siswa8AData(
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
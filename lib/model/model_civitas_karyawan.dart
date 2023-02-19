// To parse this JSON data, do
//
//     final apiCivitasKaryawan = apiCivitasKaryawanFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

KaryawanModel apiCivitasKaryawanFromJson(String str) => KaryawanModel.fromJson(json.decode(str));

String apiCivitasKaryawanToJson(KaryawanModel data) => json.encode(data.toJson());

class KaryawanModel {
    KaryawanModel({
       this.status,
       this.data,
    });

    String? status;
    List<KaryawanData>? data;

    factory KaryawanModel.fromJson(Map<String, dynamic> json) => KaryawanModel(
        status: json["status"],
        data: List<KaryawanData>.from(json["data"].map((x) => KaryawanData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class KaryawanData {
    KaryawanData({
        this.id,
        this.foto,
        this.nama,
        this.jabatan,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    int? id;
    String? foto;
    String? nama;
    String? jabatan;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deletedAt;

    factory KaryawanData.fromJson(Map<String, dynamic> json) => KaryawanData(
        id: json["id"],
        foto: json["foto"],
        nama: json["nama"],
        jabatan: json["jabatan"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "foto": foto,
        "nama": nama,
        "jabatan": jabatan,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
    };
}
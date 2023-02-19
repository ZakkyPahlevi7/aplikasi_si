// To parse this JSON data, do
//
//     final apiCivitasWaliKelas = apiCivitasWaliKelasFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

WaliKelasModel apiCivitasWaliKelasFromJson(String str) => WaliKelasModel.fromJson(json.decode(str));

String apiCivitasWaliKelasToJson(WaliKelasModel data) => json.encode(data.toJson());

class WaliKelasModel {
    WaliKelasModel({
        this.status,
        this.data,
    });

    String? status;
    List<WaliKelasData>? data;

    factory WaliKelasModel.fromJson(Map<String, dynamic> json) => WaliKelasModel(
        status: json["status"],
        data: List<WaliKelasData>.from(json["data"].map((x) => WaliKelasData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class WaliKelasData {
    WaliKelasData({
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

    factory WaliKelasData.fromJson(Map<String, dynamic> json) => WaliKelasData(
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

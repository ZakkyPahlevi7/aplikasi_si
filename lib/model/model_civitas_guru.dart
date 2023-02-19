// To parse this JSON data, do
//
//     final apiCivitasGuru = apiCivitasGuruFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

GuruModel apiCivitasGuruFromJson(String str) => GuruModel.fromJson(json.decode(str));

String apiCivitasGuruToJson(GuruModel data) => json.encode(data.toJson());

class GuruModel {
    GuruModel({
        this.status,
        this.data,
    });

    String? status;
    List<GuruData>? data;

    factory GuruModel.fromJson(Map<String, dynamic> json) => GuruModel(
        status: json["status"],
        data: List<GuruData>.from(json["data"].map((x) => GuruData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class GuruData {
    GuruData({
        this.id,
        this.foto,
        this.nama,
        this.pengampu,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    int? id;
    String? foto;
    String? nama;
    String? pengampu;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deletedAt;

    factory GuruData.fromJson(Map<String, dynamic> json) => GuruData(
        id: json["id"],
        foto: json["foto"],
        nama: json["nama"],
        pengampu: json["pengampu"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "foto": foto,
        "nama": nama,
        "pengampu": pengampu,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
    };
}

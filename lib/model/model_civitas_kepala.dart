// To parse this JSON data, do
//
//     final ApiCivitasKepala = ApiCivitasKepalaFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

KepalaModel ApiCivitasKepalaFromJson(String str) => KepalaModel.fromJson(json.decode(str));

String ApiCivitasKepalaToJson(KepalaModel data) => json.encode(data.toJson());

class KepalaModel {
    KepalaModel({
        this.status,
        this.data,
    });

    String? status;
    List<KepalaData>? data;

    factory KepalaModel.fromJson(Map<String, dynamic> json) => KepalaModel(
        status: json["status"],
        data: List<KepalaData>.from(json["data"].map((x) => KepalaData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class KepalaData {
    KepalaData({
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

    factory KepalaData.fromJson(Map<String, dynamic> json) => KepalaData(
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

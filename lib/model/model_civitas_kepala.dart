// To parse this JSON data, do
//
//     final ApiCivitasKepala = ApiCivitasKepalaFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ApiCivitasKepala ApiCivitasKepalaFromJson(String str) => ApiCivitasKepala.fromJson(json.decode(str));

String ApiCivitasKepalaToJson(ApiCivitasKepala data) => json.encode(data.toJson());

class ApiCivitasKepala {
    ApiCivitasKepala({
        required this.status,
        required this.data,
    });

    String status;
    List<Datum> data;

    factory ApiCivitasKepala.fromJson(Map<String, dynamic> json) => ApiCivitasKepala(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        required this.id,
        required this.foto,
        required this.nama,
        required this.jabatan,
        required this.createdAt,
        required this.updatedAt,
        required this.deletedAt,
    });

    int id;
    String foto;
    String nama;
    String jabatan;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
    };
}

// To parse this JSON data, do
//
//     final apiCivitasGuru = apiCivitasGuruFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ApiCivitasGuru apiCivitasGuruFromJson(String str) => ApiCivitasGuru.fromJson(json.decode(str));

String apiCivitasGuruToJson(ApiCivitasGuru data) => json.encode(data.toJson());

class ApiCivitasGuru {
    ApiCivitasGuru({
        required this.status,
        required this.data,
    });

    String status;
    List<Datum> data;

    factory ApiCivitasGuru.fromJson(Map<String, dynamic> json) => ApiCivitasGuru(
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
        required this.pengampu,
        required this.createdAt,
        required this.updatedAt,
        required this.deletedAt,
    });

    int id;
    String foto;
    String nama;
    String pengampu;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
    };
}

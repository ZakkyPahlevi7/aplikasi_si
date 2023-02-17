// To parse this JSON data, do
//
//     final apiKelas7B = apiKelas7BFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ApiKelas7B apiKelas7BFromJson(String str) => ApiKelas7B.fromJson(json.decode(str));

String apiKelas7BToJson(ApiKelas7B data) => json.encode(data.toJson());

class ApiKelas7B {
    ApiKelas7B({
        required this.status,
        required this.data,
    });

    String status;
    List<Datum> data;

    factory ApiKelas7B.fromJson(Map<String, dynamic> json) => ApiKelas7B(
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
        required this.kelas,
        required this.createdAt,
        required this.updatedAt,
        required this.deletedAt,
    });

    int id;
    String foto;
    String nama;
    String kelas;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
    };
}

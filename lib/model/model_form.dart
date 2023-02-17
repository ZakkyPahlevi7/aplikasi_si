// To parse this JSON data, do
//
//     final apiform = apiformFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Apiform apiformFromJson(String str) => Apiform.fromJson(json.decode(str));

String apiformToJson(Apiform data) => json.encode(data.toJson());

class Apiform {
    Apiform({
        required this.status,
        required this.data,
    });

    String status;
    List<Datum> data;

    factory Apiform.fromJson(Map<String, dynamic> json) => Apiform(
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
        required this.createdAt,
        required this.updatedAt,
        required this.judul,
        required this.file,
        required this.deletedAt,
    });

    int id;
    DateTime createdAt;
    DateTime updatedAt;
    String judul;
    String file;
    dynamic deletedAt;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        judul: json["judul"],
        file: json["file"],
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "judul": judul,
        "file": file,
        "deleted_at": deletedAt,
    };
}

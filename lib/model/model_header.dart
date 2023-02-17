// To parse this JSON data, do
//
//     final fotoheader = fotoheaderFromJson(jsonString);

// ignore_for_file: unnecessary_null_comparison, prefer_if_null_operators

import 'package:meta/meta.dart';
import 'dart:convert';

Fotoheader fotoheaderFromJson(String str) =>
    Fotoheader.fromJson(json.decode(str));

String fotoheaderToJson(Fotoheader data) => json.encode(data.toJson());

class Fotoheader {
  Fotoheader({
    required this.status,
    required this.data,
  });

  String status;
  List<Datum> data;

  factory Fotoheader.fromJson(Map<String, dynamic> json) => Fotoheader(
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
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  int id;
  String foto;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic deletedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        foto: json["foto"],
        createdAt: json["created_at"] == null ? '' : json["created_at"],
        updatedAt: json["updateat"] == null ? '' : json["updateat"],
           
        deletedAt: json["deleted_at"] == null ? '' : json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "foto": foto,
        "created_at": createdAt == null ? '' : createdAt,
        "updated_at":
            updatedAt.toIso8601String == null ? '' : updatedAt.toIso8601String,
        "deleted_at": deletedAt == null ? '' : deletedAt,
      };
}

// To parse this JSON data, do
//
//     final fotoheader = fotoheaderFromJson(jsonString);

// ignore_for_file: unnecessary_null_comparison, prefer_if_null_operators

import 'package:meta/meta.dart';
import 'dart:convert';

HeaderModel fotoheaderFromJson(String str) =>
    HeaderModel.fromJson(json.decode(str));

String fotoheaderToJson(HeaderModel data) => json.encode(data.toJson());

class HeaderModel {
  HeaderModel({
    this.status,
    this.data,
  });

  String? status;
  List<HeaderData>? data;

  factory HeaderModel.fromJson(Map<String, dynamic> json) => HeaderModel(
        status: json["status"],
        data: List<HeaderData>.from(json["data"].map((x) => HeaderData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class HeaderData {
  HeaderData({
    this.id,
    this.foto,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int? id;
  String? foto;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic deletedAt;

  factory HeaderData.fromJson(Map<String, dynamic> json) => HeaderData(
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
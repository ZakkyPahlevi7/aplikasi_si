// To parse this JSON data, do
//
//     final ppdbModel = ppdbModelFromJson(jsonString);

import 'dart:convert';

PpdbModel ppdbModelFromJson(String str) => PpdbModel.fromJson(json.decode(str));

String ppdbModelToJson(PpdbModel data) => json.encode(data.toJson());

class PpdbModel {
    PpdbModel({
        required this.status,
        required this.data,
    });

    String status;
    List<PpdbData> data;

    factory PpdbModel.fromJson(Map<String, dynamic> json) => PpdbModel(
        status: json["status"],
        data: List<PpdbData>.from(json["data"].map((x) => PpdbData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class PpdbData {
    PpdbData({
        required this.id,
        required this.createdAt,
        required this.updatedAt,
        required this.judul,
        required this.file,
        this.deletedAt,
        required this.link,
    });

    int id;
    DateTime createdAt;
    DateTime updatedAt;
    String judul;
    String file;
    dynamic deletedAt;
    String link;

    factory PpdbData.fromJson(Map<String, dynamic> json) => PpdbData(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        judul: json["judul"],
        file: json["file"],
        deletedAt: json["deleted_at"],
        link: json["link"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "judul": judul,
        "file": file,
        "deleted_at": deletedAt,
        "link": link,
    };
}

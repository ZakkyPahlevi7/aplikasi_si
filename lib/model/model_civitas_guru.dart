// To parse this JSON data, do
//
//     final guruModel = guruModelFromJson(jsonString);

import 'dart:convert';

GuruModel guruModelFromJson(String str) => GuruModel.fromJson(json.decode(str));

String guruModelToJson(GuruModel data) => json.encode(data.toJson());

class GuruModel {
    GuruModel({
        required this.status,
        required this.data,
    });

    String status;
    List<GuruData> data;

    factory GuruModel.fromJson(Map<String, dynamic> json) => GuruModel(
        status: json["status"],
        data: List<GuruData>.from(json["data"].map((x) => GuruData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class GuruData {
    GuruData({
        required this.id,
        required this.foto,
        required this.nama,
        required this.pengampu,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
        required this.link,
    });

    int id;
    String foto;
    String nama;
    String pengampu;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    String link;

    factory GuruData.fromJson(Map<String, dynamic> json) => GuruData(
        id: json["id"],
        foto: json["foto"],
        nama: json["nama"],
        pengampu: json["pengampu"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        link: json["link"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "foto": foto,
        "nama": nama,
        "pengampu": pengampu,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "link": link,
    };
}

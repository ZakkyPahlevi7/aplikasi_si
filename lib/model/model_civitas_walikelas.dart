// To parse this JSON data, do
//
//     final waliKelasModel = waliKelasModelFromJson(jsonString);

import 'dart:convert';

WaliKelasModel waliKelasModelFromJson(String str) => WaliKelasModel.fromJson(json.decode(str));

String waliKelasModelToJson(WaliKelasModel data) => json.encode(data.toJson());

class WaliKelasModel {
    WaliKelasModel({
        required this.status,
        required this.data,
    });

    String status;
    List<WaliKelasData> data;

    factory WaliKelasModel.fromJson(Map<String, dynamic> json) => WaliKelasModel(
        status: json["status"],
        data: List<WaliKelasData>.from(json["data"].map((x) => WaliKelasData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class WaliKelasData {
    WaliKelasData({
        required this.id,
        required this.foto,
        required this.nama,
        required this.kelas,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
        required this.link,
    });

    int id;
    String foto;
    String nama;
    String kelas;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    String link;

    factory WaliKelasData.fromJson(Map<String, dynamic> json) => WaliKelasData(
        id: json["id"],
        foto: json["foto"],
        nama: json["nama"],
        kelas: json["kelas"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        link: json["link"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "foto": foto,
        "nama": nama,
        "kelas": kelas,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "link": link,
    };
}

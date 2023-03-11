// To parse this JSON data, do
//
//     final kepalaModel = kepalaModelFromJson(jsonString);

import 'dart:convert';

KepalaModel kepalaModelFromJson(String str) => KepalaModel.fromJson(json.decode(str));

String kepalaModelToJson(KepalaModel data) => json.encode(data.toJson());

class KepalaModel {
    KepalaModel({
        required this.status,
        required this.data,
    });

    String status;
    List<KepalaData> data;

    factory KepalaModel.fromJson(Map<String, dynamic> json) => KepalaModel(
        status: json["status"],
        data: List<KepalaData>.from(json["data"].map((x) => KepalaData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class KepalaData {
    KepalaData({
        required this.id,
        required this.foto,
        required this.nama,
        required this.jabatan,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
        required this.link,
    });

    int id;
    String foto;
    String nama;
    String jabatan;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    String link;

    factory KepalaData.fromJson(Map<String, dynamic> json) => KepalaData(
        id: json["id"],
        foto: json["foto"],
        nama: json["nama"],
        jabatan: json["jabatan"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        link: json["link"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "foto": foto,
        "nama": nama,
        "jabatan": jabatan,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "link": link,
    };
}

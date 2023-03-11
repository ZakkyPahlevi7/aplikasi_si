// To parse this JSON data, do
//
//     final karyawanModel = karyawanModelFromJson(jsonString);

import 'dart:convert';

KaryawanModel karyawanModelFromJson(String str) => KaryawanModel.fromJson(json.decode(str));

String karyawanModelToJson(KaryawanModel data) => json.encode(data.toJson());

class KaryawanModel {
    KaryawanModel({
        required this.status,
        required this.data,
    });

    String status;
    List<KaryawanData> data;

    factory KaryawanModel.fromJson(Map<String, dynamic> json) => KaryawanModel(
        status: json["status"],
        data: List<KaryawanData>.from(json["data"].map((x) => KaryawanData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class KaryawanData {
    KaryawanData({
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

    factory KaryawanData.fromJson(Map<String, dynamic> json) => KaryawanData(
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

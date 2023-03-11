// To parse this JSON data, do
//
//     final wakilKepalaModel = wakilKepalaModelFromJson(jsonString);

import 'dart:convert';

WakilKepalaModel wakilKepalaModelFromJson(String str) => WakilKepalaModel.fromJson(json.decode(str));

String wakilKepalaModelToJson(WakilKepalaModel data) => json.encode(data.toJson());

class WakilKepalaModel {
    WakilKepalaModel({
        required this.status,
        required this.data,
    });

    String status;
    List<WakilKepalaData> data;

    factory WakilKepalaModel.fromJson(Map<String, dynamic> json) => WakilKepalaModel(
        status: json["status"],
        data: List<WakilKepalaData>.from(json["data"].map((x) => WakilKepalaData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class WakilKepalaData {
    WakilKepalaData({
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

    factory WakilKepalaData.fromJson(Map<String, dynamic> json) => WakilKepalaData(
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

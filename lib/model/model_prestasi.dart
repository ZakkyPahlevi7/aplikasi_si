// To parse this JSON data, do
//
//     final apiprestasi = apiprestasiFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Apiprestasi apiprestasiFromJson(String str) => Apiprestasi.fromJson(json.decode(str));

String apiprestasiToJson(Apiprestasi data) => json.encode(data.toJson());

class Apiprestasi {
    Apiprestasi({
        required this.status,
        required this.data,
    });

    String status;
    List<Datum> data;

    factory Apiprestasi.fromJson(Map<String, dynamic> json) => Apiprestasi(
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
        required this.tingkat,
        required this.lomba,
        required this.juaraId,
        required this.createdAt,
        required this.updatedAt,
        required this.deletedAt,
    });

    int id;
    String tingkat;
    String lomba;
    int juaraId;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        tingkat: json["tingkat"],
        lomba: json["lomba"],
        juaraId: json["juara_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "tingkat": tingkat,
        "lomba": lomba,
        "juara_id": juaraId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
    };
}

// To parse this JSON data, do
//
//     final apievent = apieventFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Apievent apieventFromJson(String str) => Apievent.fromJson(json.decode(str));

String apieventToJson(Apievent data) => json.encode(data.toJson());

class Apievent {
    Apievent({
        required this.status,
        required this.data,
    });

    String status;
    List<Datum> data;

    factory Apievent.fromJson(Map<String, dynamic> json) => Apievent(
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
        required this.foto,
        required this.event,
        required this.peserta,
        required this.tanggal,
        required this.lokasi,
        required this.tentang,
        required this.deletedAt,
    });

    int id;
    DateTime createdAt;
    DateTime updatedAt;
    String foto;
    String event;
    String peserta;
    String tanggal;
    String lokasi;
    String tentang;
    dynamic deletedAt;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        foto: json["foto"],
        event: json["event"],
        peserta: json["peserta"],
        tanggal: json["tanggal"],
        lokasi: json["lokasi"],
        tentang: json["tentang"],
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "foto": foto,
        "event": event,
        "peserta": peserta,
        "tanggal": tanggal,
        "lokasi": lokasi,
        "tentang": tentang,
        "deleted_at": deletedAt,
    };
}

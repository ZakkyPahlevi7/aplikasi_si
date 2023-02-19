// To parse this JSON data, do
//
//     final apievent = apieventFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

EventModel apieventFromJson(String str) => EventModel.fromJson(json.decode(str));

String apieventToJson(EventModel data) => json.encode(data.toJson());

class EventModel {
    EventModel({
        this.status,
        this.data,
    });

    String? status;
    List<EventData>? data;

    factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
        status: json["status"],
        data: List<EventData>.from(json["data"].map((x) => EventData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class EventData {
    EventData({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.foto,
        this.event,
        this.peserta,
        this.tanggal,
        this.lokasi,
        this.tentang,
        this.deletedAt,
    });

    int? id;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? foto;
    String? event;
    String? peserta;
    String? tanggal;
    String? lokasi;
    String? tentang;
    dynamic deletedAt;

    factory EventData.fromJson(Map<String, dynamic> json) => EventData(
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
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "foto": foto,
        "event": event,
        "peserta": peserta,
        "tanggal": tanggal,
        "lokasi": lokasi,
        "tentang": tentang,
        "deleted_at": deletedAt,
    };
}

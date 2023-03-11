// To parse this JSON data, do
//
//     final eventComingSoonModel = eventComingSoonModelFromJson(jsonString);

import 'dart:convert';

EventComingSoonModel eventComingSoonModelFromJson(String str) => EventComingSoonModel.fromJson(json.decode(str));

String eventComingSoonModelToJson(EventComingSoonModel data) => json.encode(data.toJson());

class EventComingSoonModel {
    EventComingSoonModel({
        required this.status,
        required this.data,
    });

    String status;
    List<EventComingSoonData> data;

    factory EventComingSoonModel.fromJson(Map<String, dynamic> json) => EventComingSoonModel(
        status: json["status"],
        data: List<EventComingSoonData>.from(json["data"].map((x) => EventComingSoonData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class EventComingSoonData {
    EventComingSoonData({
        required this.id,
        required this.foto,
        required this.event,
        required this.peserta,
        required this.tanggal,
        required this.status,
        required this.lokasi,
        required this.tentang,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
        required this.link,
        required this.imagesEvents,
    });

    int id;
    String foto;
    String event;
    String peserta;
    DateTime tanggal;
    String status;
    String lokasi;
    String tentang;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    String link;
    List<dynamic> imagesEvents;

    factory EventComingSoonData.fromJson(Map<String, dynamic> json) => EventComingSoonData(
        id: json["id"],
        foto: json["foto"],
        event: json["event"],
        peserta: json["peserta"],
        tanggal: DateTime.parse(json["tanggal"]),
        status: json["status"],
        lokasi: json["lokasi"],
        tentang: json["tentang"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        link: json["link"],
        imagesEvents: List<dynamic>.from(json["images_events"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "foto": foto,
        "event": event,
        "peserta": peserta,
        "tanggal": tanggal.toIso8601String(),
        "status": status,
        "lokasi": lokasi,
        "tentang": tentang,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "link": link,
        "images_events": List<dynamic>.from(imagesEvents.map((x) => x)),
    };
}


// To parse this JSON data, do
//
//     final eventRecentModel = eventRecentModelFromJson(jsonString);

EventRecentModel eventRecentModelFromJson(String str) => EventRecentModel.fromJson(json.decode(str));

String eventRecentModelToJson(EventRecentModel data) => json.encode(data.toJson());

class EventRecentModel {
    EventRecentModel({
        required this.status,
        required this.data,
    });

    String status;
    List<EventRecentData> data;

    factory EventRecentModel.fromJson(Map<String, dynamic> json) => EventRecentModel(
        status: json["status"],
        data: List<EventRecentData>.from(json["data"].map((x) => EventRecentData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class EventRecentData {
    EventRecentData({
        required this.id,
        required this.foto,
        required this.event,
        required this.peserta,
        required this.tanggal,
        required this.status,
        required this.lokasi,
        required this.tentang,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
        required this.link,
        required this.imagesEvents,
    });

    int id;
    String foto;
    String event;
    String peserta;
    DateTime tanggal;
    String status;
    String lokasi;
    String tentang;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    String link;
    List<dynamic> imagesEvents;

    factory EventRecentData.fromJson(Map<String, dynamic> json) => EventRecentData(
        id: json["id"],
        foto: json["foto"],
        event: json["event"],
        peserta: json["peserta"],
        tanggal: DateTime.parse(json["tanggal"]),
        status: json["status"],
        lokasi: json["lokasi"],
        tentang: json["tentang"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        link: json["link"],
        imagesEvents: List<dynamic>.from(json["images_events"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "foto": foto,
        "event": event,
        "peserta": peserta,
        "tanggal": tanggal.toIso8601String(),
        "status": status,
        "lokasi": lokasi,
        "tentang": tentang,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "link": link,
        "images_events": List<dynamic>.from(imagesEvents.map((x) => x)),
    };
}


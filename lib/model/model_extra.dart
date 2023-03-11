// To parse this JSON data, do
//
//     final extraModel = extraModelFromJson(jsonString);

import 'dart:convert';

ExtraModel extraModelFromJson(String str) => ExtraModel.fromJson(json.decode(str));

String extraModelToJson(ExtraModel data) => json.encode(data.toJson());

class ExtraModel {
  ExtraModel({
    required this.status,
    required this.data,
  });

  String status;
  List<ExtraData> data;

  factory ExtraModel.fromJson(Map<String, dynamic> json) => ExtraModel(
    status: json["status"],
    data: List<ExtraData>.from(json["data"].map((x) => ExtraData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class ExtraData {
  ExtraData({
    required this.id,
    required this.judul,
    required this.cover,
    required this.jadwal,
    required this.jam,
    required this.lokasi,
    required this.tentang,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.link,
    required this.images,
  });

  int id;
  String judul;
  String cover;
  String jadwal;
  String jam;
  String lokasi;
  String tentang;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  String link;
  List<Image> images;

  factory ExtraData.fromJson(Map<String, dynamic> json) => ExtraData(
    id: json["id"],
    judul: json["judul"],
    cover: json["cover"],
    jadwal: json["jadwal"],
    jam: json["jam"],
    lokasi: json["lokasi"],
    tentang: json["tentang"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    link: json["link"],
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "judul": judul,
    "cover": cover,
    "jadwal": jadwal,
    "jam": jam,
    "lokasi": lokasi,
    "tentang": tentang,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
    "link": link,
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
  };
}

class Image {
  Image({
    required this.id,
    required this.image,
    required this.postExtrasId,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.link,
  });

  int id;
  String image;
  String postExtrasId;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  String link;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    image: json["image"],
    postExtrasId: json["post_extras_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    link: json["link"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "post_extras_id": postExtrasId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
    "link": link,
  };
}

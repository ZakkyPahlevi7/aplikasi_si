// To parse this JSON data, do
//
//     final siswa7BModel = siswa7BModelFromJson(jsonString);

import 'dart:convert';

Siswa9BModel siswa7BModelFromJson(String str) => Siswa9BModel.fromJson(json.decode(str));

String siswa7BModelToJson(Siswa9BModel data) => json.encode(data.toJson());

class Siswa9BModel {
  Siswa9BModel({
    required this.status,
    required this.data,
  });

  String status;
  List<Siswa9BData> data;

  factory Siswa9BModel.fromJson(Map<String, dynamic> json) => Siswa9BModel(
    status: json["status"],
    data: List<Siswa9BData>.from(json["data"].map((x) => Siswa9BData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Siswa9BData {
  Siswa9BData({
    required this.id,
    required this.foto,
    required this.nama,
    required this.password,
    required this.kelas,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.link,
    required this.spps,
  });

  int id;
  String foto;
  String nama;
  String password;
  String kelas;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  String link;
  List<Spp> spps;

  factory Siswa9BData.fromJson(Map<String, dynamic> json) => Siswa9BData(
    id: json["id"],
    foto: json["foto"],
    nama: json["nama"],
    password: json["password"],
    kelas: json["kelas"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    link: json["link"],
    spps: List<Spp>.from(json["spps"].map((x) => Spp.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "foto": foto,
    "nama": nama,
    "password": password,
    "kelas": kelas,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
    "link": link,
    "spps": List<dynamic>.from(spps.map((x) => x.toJson())),
  };
}

class Spp {
  Spp({
    required this.id,
    required this.nisId,
    required this.nisType,
    required this.tahunAjaran,
    required this.tanggalTagihan,
    required this.tagihan,
    required this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int id;
  String nisId;
  String nisType;
  String tahunAjaran;
  DateTime tanggalTagihan;
  String tagihan;
  String status;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;

  factory Spp.fromJson(Map<String, dynamic> json) => Spp(
    id: json["id"],
    nisId: json["NIS_id"],
    nisType: json["NIS_type"],
    tahunAjaran: json["tahun_ajaran"],
    tanggalTagihan: DateTime.parse(json["tanggal_tagihan"]),
    tagihan: json["tagihan"],
    status: json["status"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "NIS_id": nisId,
    "NIS_type": nisType,
    "tahun_ajaran": tahunAjaran,
    "tanggal_tagihan": "${tanggalTagihan.year.toString().padLeft(4, '0')}-${tanggalTagihan.month.toString().padLeft(2, '0')}-${tanggalTagihan.day.toString().padLeft(2, '0')}",
    "tagihan": tagihan,
    "status": status,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

// To parse this JSON data, do
//
//     final sppModel = sppModelFromJson(jsonString);

import 'dart:convert';

SppModel sppModelFromJson(String str) => SppModel.fromJson(json.decode(str));

String sppModelToJson(SppModel data) => json.encode(data.toJson());

class SppModel {
  SppModel({
    this.spps,
  });

  List<SppData>? spps;

  factory SppModel.fromJson(Map<String, dynamic> json) => SppModel(
    spps: List<SppData>.from(json["spps"].map((x) => SppData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "spps": List<dynamic>.from(spps!.map((x) => x.toJson())),
  };
}

class SppData {
  SppData({
    required this.tahun,
    required this.spp,
  });

  String tahun;
  List<SppDatas> spp;

  factory SppData.fromJson(Map<String, dynamic> json) => SppData(
    tahun: json["tahun"],
    spp: List<SppDatas>.from(json["spp"].map((x) => SppDatas.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "tahun": tahun,
    "spp": List<dynamic>.from(spp.map((x) => x.toJson())),
  };
}

class SppDatas {
  SppDatas({
    required this.id,
    required this.nisId,
    required this.nisType,
    required this.tahunAjaran,
    required this.tanggalTagihan,
    required this.tagihan,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  int id;
  String nisId;
  String nisType;
  String tahunAjaran;
  DateTime tanggalTagihan;
  String tagihan;
  String status;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  factory SppDatas.fromJson(Map<String, dynamic> json) => SppDatas(
    id: json["id"],
    nisId: json["NIS_id"],
    nisType: json["NIS_type"],
    tahunAjaran: json["tahun_ajaran"],
    tanggalTagihan: DateTime.parse(json["tanggal_tagihan"]),
    tagihan: json["tagihan"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
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
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
  };
}

class SppSummary {

}

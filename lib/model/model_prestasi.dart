// To parse this JSON data, do
//
//     final apiprestasi = apiprestasiFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

PrestasiModel apiprestasiFromJson(String str) => PrestasiModel.fromJson(json.decode(str));

String apiprestasiToJson(PrestasiModel data) => json.encode(data.toJson());

class PrestasiModel {
    PrestasiModel({
        this.status,
        this.data,
    });

    String? status;
    List<PrestasiData>? data;

    factory PrestasiModel.fromJson(Map<String, dynamic> json) => PrestasiModel(
        status: json["status"],
        data: List<PrestasiData>.from(json["data"].map((x) => PrestasiData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class PrestasiData {
    PrestasiData({
        this.id,
        this.tingkat,
        this.lomba,
        this.juaraId,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    int? id;
    String? tingkat;
    String? lomba;
    int? juaraId;
    DateTime? createdAt;
    DateTime? updatedAt;
    dynamic deletedAt;

    factory PrestasiData.fromJson(Map<String, dynamic> json) => PrestasiData(
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
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
    };
}
// To parse this JSON data, do
//
//     final apiform = apiformFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

FormModel apiformFromJson(String str) => FormModel.fromJson(json.decode(str));

String apiformToJson(FormModel data) => json.encode(data.toJson());

class FormModel {
    FormModel({
        this.status,
        this.data,
    });

    String? status;
    List<FormsData>? data;

    factory FormModel.fromJson(Map<String, dynamic> json) => FormModel(
        status: json["status"],
        data: List<FormsData>.from(json["data"].map((x) => FormsData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class FormsData {
    FormsData({
       this.id,
       this.createdAt,
       this.updatedAt,
       this.judul,
       this.file,
       this.deletedAt,
    });

    int? id;
    DateTime? createdAt;
    DateTime? updatedAt;
    String? judul;
    String? file;
    dynamic deletedAt;

    factory FormsData.fromJson(Map<String, dynamic> json) => FormsData(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        judul: json["judul"],
        file: json["file"],
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "judul": judul,
        "file": file,
        "deleted_at": deletedAt,
    };
}

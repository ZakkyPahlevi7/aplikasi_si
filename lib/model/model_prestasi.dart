// To parse this JSON data, do
//
//     final prestasiModel = prestasiModelFromJson(jsonString);

import 'dart:convert';

PrestasiModel prestasiModelFromJson(String str) => PrestasiModel.fromJson(json.decode(str));

String prestasiModelToJson(PrestasiModel data) => json.encode(data.toJson());

class PrestasiModel {
    PrestasiModel({
        required this.status,
        required this.data,
    });

    String status;
    List<PrestasiData> data;

    factory PrestasiModel.fromJson(Map<String, dynamic> json) => PrestasiModel(
        status: json["status"],
        data: List<PrestasiData>.from(json["data"].map((x) => PrestasiData.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class PrestasiData {
    PrestasiData({
        required this.id,
        required this.tingkat,
        required this.lomba,
        required this.juaraId,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
        required this.juara,
    });

    int id;
    String tingkat;
    String lomba;
    String juaraId;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    JuaraClass juara;

    factory PrestasiData.fromJson(Map<String, dynamic> json) => PrestasiData(
        id: json["id"],
        tingkat: json["tingkat"],
        lomba: json["lomba"],
        juaraId: json["juara_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        juara: JuaraClass.fromJson(json["juara"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "tingkat": tingkat,
        "lomba": lomba,
        "juara_id": juaraId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "juara": juara.toJson(),
    };
}

class JuaraClass {
    JuaraClass({
        required this.id,
        required this.medal,
        required this.juara,
        required this.createdAt,
        required this.updatedAt,
        this.deletedAt,
        required this.link,
    });

    int id;
    Medal medal;
    String juara;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic deletedAt;
    String link;

    factory JuaraClass.fromJson(Map<String, dynamic> json) => JuaraClass(
        id: json["id"],
        medal: medalValues.map[json["medal"]]!,
        juara: json["juara"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        link: json["link"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "medal": medalValues.reverse[medal],
        "juara": juaraEnumValues.reverse[juara],
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "link": link,
    };
}

enum JuaraEnum { JUARA_3, JUARA_2, JUARA_1 }

final juaraEnumValues = EnumValues({
    "Juara 1": JuaraEnum.JUARA_1,
    "Juara 2": JuaraEnum.JUARA_2,
    "Juara 3": JuaraEnum.JUARA_3
});

enum Medal { MEDALI_34_PNG, MEDALI_21_PNG, MEDALI_12_PNG }

final medalValues = EnumValues({
    "Medali 1 2.png": Medal.MEDALI_12_PNG,
    "Medali 2 1.png": Medal.MEDALI_21_PNG,
    "Medali 3 4.png": Medal.MEDALI_34_PNG
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}

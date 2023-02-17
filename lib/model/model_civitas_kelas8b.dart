// To parse this JSON data, do
//
//     final apiKelas8B = apiKelas8BFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ApiKelas8B apiKelas8BFromJson(String str) => ApiKelas8B.fromJson(json.decode(str));

String apiKelas8BToJson(ApiKelas8B data) => json.encode(data.toJson());

class ApiKelas8B {
    ApiKelas8B({
        required this.status,
        required this.data,
    });

    String status;
    List<dynamic> data;

    factory ApiKelas8B.fromJson(Map<String, dynamic> json) => ApiKelas8B(
        status: json["status"],
        data: List<dynamic>.from(json["data"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x)),
    };
}

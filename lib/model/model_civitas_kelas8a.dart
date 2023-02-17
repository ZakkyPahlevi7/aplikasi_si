// To parse this JSON data, do
//
//     final apiKelas8A = apiKelas8AFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ApiKelas8A apiKelas8AFromJson(String str) => ApiKelas8A.fromJson(json.decode(str));

String apiKelas8AToJson(ApiKelas8A data) => json.encode(data.toJson());

class ApiKelas8A {
    ApiKelas8A({
        required this.status,
        required this.data,
    });

    String status;
    List<dynamic> data;

    factory ApiKelas8A.fromJson(Map<String, dynamic> json) => ApiKelas8A(
        status: json["status"],
        data: List<dynamic>.from(json["data"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x)),
    };
}

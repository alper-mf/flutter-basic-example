// To parse this JSON data, do
//
//     final jsonGetLoadData = jsonGetLoadDataFromJson(jsonString);

import 'dart:convert';

JsonGetLoadData jsonGetLoadDataFromJson(String str) =>
    JsonGetLoadData.fromJson(json.decode(str));

String jsonGetLoadDataToJson(JsonGetLoadData data) =>
    json.encode(data.toJson());

class JsonGetLoadData {
  JsonGetLoadData({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory JsonGetLoadData.fromJson(Map<String, dynamic> json) =>
      JsonGetLoadData(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}

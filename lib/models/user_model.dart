// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'user_model.g.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

@HiveType(typeId: 1)
@JsonSerializable()
class UserModel {
  @HiveField(1)
  @JsonKey(name: "code")
  int code;
  @HiveField(3)
  @JsonKey(name: "msg")
  String msg;
  @HiveField(5)
  @JsonKey(name: "data")
  List<Datum> data;

  UserModel({
    required this.code,
    required this.msg,
    required this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@HiveType(typeId: 2)
@JsonSerializable()
class Datum {
  @HiveField(1)
  @JsonKey(name: "name")
  String name;
  @HiveField(3)
  @JsonKey(name: "current")
  int current;
  @HiveField(5)
  @JsonKey(name: "total")
  int total;

  Datum({
    required this.name,
    required this.current,
    required this.total,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'anime_model.freezed.dart';
part 'anime_model.g.dart';

@freezed
abstract class AnimeModel extends HiveObject with _$AnimeModel {
  // 添加私有构造函数，确保 freezed 类能正常扩展 HiveObject
  AnimeModel._();

  @HiveType(typeId: 0)
  factory AnimeModel({
    @HiveField(0) required String name,
    @HiveField(1) required int age,
    @HiveField(2) required int id,
  }) = _AnimeModel;

  // 用于 JSON 反序列化
  factory AnimeModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeModelFromJson(json);
}

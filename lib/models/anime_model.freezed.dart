// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnimeModel {
  @HiveField(0)
  String get name;
  @HiveField(1)
  int get age;
  @HiveField(2)
  int get id;

  /// Create a copy of AnimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimeModelCopyWith<AnimeModel> get copyWith =>
      _$AnimeModelCopyWithImpl<AnimeModel>(this as AnimeModel, _$identity);

  /// Serializes this AnimeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimeModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, age, id);

  @override
  String toString() {
    return 'AnimeModel(name: $name, age: $age, id: $id)';
  }
}

/// @nodoc
abstract mixin class $AnimeModelCopyWith<$Res> {
  factory $AnimeModelCopyWith(
          AnimeModel value, $Res Function(AnimeModel) _then) =
      _$AnimeModelCopyWithImpl;
  @useResult
  $Res call(
      {@HiveField(0) String name, @HiveField(1) int age, @HiveField(2) int id});
}

/// @nodoc
class _$AnimeModelCopyWithImpl<$Res> implements $AnimeModelCopyWith<$Res> {
  _$AnimeModelCopyWithImpl(this._self, this._then);

  final AnimeModel _self;
  final $Res Function(AnimeModel) _then;

  /// Create a copy of AnimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _AnimeModel extends AnimeModel {
  _AnimeModel(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.age,
      @HiveField(2) required this.id})
      : super._();
  factory _AnimeModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeModelFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final int age;
  @override
  @HiveField(2)
  final int id;

  /// Create a copy of AnimeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnimeModelCopyWith<_AnimeModel> get copyWith =>
      __$AnimeModelCopyWithImpl<_AnimeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnimeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnimeModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, age, id);

  @override
  String toString() {
    return 'AnimeModel(name: $name, age: $age, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$AnimeModelCopyWith<$Res>
    implements $AnimeModelCopyWith<$Res> {
  factory _$AnimeModelCopyWith(
          _AnimeModel value, $Res Function(_AnimeModel) _then) =
      __$AnimeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name, @HiveField(1) int age, @HiveField(2) int id});
}

/// @nodoc
class __$AnimeModelCopyWithImpl<$Res> implements _$AnimeModelCopyWith<$Res> {
  __$AnimeModelCopyWithImpl(this._self, this._then);

  final _AnimeModel _self;
  final $Res Function(_AnimeModel) _then;

  /// Create a copy of AnimeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? id = null,
  }) {
    return _then(_AnimeModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

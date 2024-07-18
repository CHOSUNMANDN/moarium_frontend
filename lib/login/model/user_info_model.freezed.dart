// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) {
  return _UserInfoModel.fromJson(json);
}

/// @nodoc
mixin _$UserInfoModel {
  String get name => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get major => throw _privateConstructorUsedError;
  String get studentId => throw _privateConstructorUsedError;
  String get authenticationEmail => throw _privateConstructorUsedError;
  String get authenticationNickName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoModelCopyWith<UserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoModelCopyWith<$Res> {
  factory $UserInfoModelCopyWith(
          UserInfoModel value, $Res Function(UserInfoModel) then) =
      _$UserInfoModelCopyWithImpl<$Res, UserInfoModel>;
  @useResult
  $Res call(
      {String name,
      String nickName,
      String email,
      String major,
      String studentId,
      String authenticationEmail,
      String authenticationNickName});
}

/// @nodoc
class _$UserInfoModelCopyWithImpl<$Res, $Val extends UserInfoModel>
    implements $UserInfoModelCopyWith<$Res> {
  _$UserInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nickName = null,
    Object? email = null,
    Object? major = null,
    Object? studentId = null,
    Object? authenticationEmail = null,
    Object? authenticationNickName = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationEmail: null == authenticationEmail
          ? _value.authenticationEmail
          : authenticationEmail // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationNickName: null == authenticationNickName
          ? _value.authenticationNickName
          : authenticationNickName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoModelImplCopyWith<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  factory _$$UserInfoModelImplCopyWith(
          _$UserInfoModelImpl value, $Res Function(_$UserInfoModelImpl) then) =
      __$$UserInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String nickName,
      String email,
      String major,
      String studentId,
      String authenticationEmail,
      String authenticationNickName});
}

/// @nodoc
class __$$UserInfoModelImplCopyWithImpl<$Res>
    extends _$UserInfoModelCopyWithImpl<$Res, _$UserInfoModelImpl>
    implements _$$UserInfoModelImplCopyWith<$Res> {
  __$$UserInfoModelImplCopyWithImpl(
      _$UserInfoModelImpl _value, $Res Function(_$UserInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? nickName = null,
    Object? email = null,
    Object? major = null,
    Object? studentId = null,
    Object? authenticationEmail = null,
    Object? authenticationNickName = null,
  }) {
    return _then(_$UserInfoModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationEmail: null == authenticationEmail
          ? _value.authenticationEmail
          : authenticationEmail // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationNickName: null == authenticationNickName
          ? _value.authenticationNickName
          : authenticationNickName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoModelImpl
    with DiagnosticableTreeMixin
    implements _UserInfoModel {
  const _$UserInfoModelImpl(
      {required this.name,
      required this.nickName,
      required this.email,
      required this.major,
      required this.studentId,
      required this.authenticationEmail,
      required this.authenticationNickName});

  factory _$UserInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoModelImplFromJson(json);

  @override
  final String name;
  @override
  final String nickName;
  @override
  final String email;
  @override
  final String major;
  @override
  final String studentId;
  @override
  final String authenticationEmail;
  @override
  final String authenticationNickName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInfoModel(name: $name, nickName: $nickName, email: $email, major: $major, studentId: $studentId, authenticationEmail: $authenticationEmail, authenticationNickName: $authenticationNickName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserInfoModel'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('nickName', nickName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('major', major))
      ..add(DiagnosticsProperty('studentId', studentId))
      ..add(DiagnosticsProperty('authenticationEmail', authenticationEmail))
      ..add(DiagnosticsProperty(
          'authenticationNickName', authenticationNickName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.authenticationEmail, authenticationEmail) ||
                other.authenticationEmail == authenticationEmail) &&
            (identical(other.authenticationNickName, authenticationNickName) ||
                other.authenticationNickName == authenticationNickName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, nickName, email, major,
      studentId, authenticationEmail, authenticationNickName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoModelImplCopyWith<_$UserInfoModelImpl> get copyWith =>
      __$$UserInfoModelImplCopyWithImpl<_$UserInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoModelImplToJson(
      this,
    );
  }
}

abstract class _UserInfoModel implements UserInfoModel {
  const factory _UserInfoModel(
      {required final String name,
      required final String nickName,
      required final String email,
      required final String major,
      required final String studentId,
      required final String authenticationEmail,
      required final String authenticationNickName}) = _$UserInfoModelImpl;

  factory _UserInfoModel.fromJson(Map<String, dynamic> json) =
      _$UserInfoModelImpl.fromJson;

  @override
  String get name;
  @override
  String get nickName;
  @override
  String get email;
  @override
  String get major;
  @override
  String get studentId;
  @override
  String get authenticationEmail;
  @override
  String get authenticationNickName;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoModelImplCopyWith<_$UserInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

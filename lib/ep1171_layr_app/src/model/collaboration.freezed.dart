// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'collaboration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Collaboration {
  String? get title => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String? get datatime => throw _privateConstructorUsedError;
  List<String>? get profileImages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollaborationCopyWith<Collaboration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollaborationCopyWith<$Res> {
  factory $CollaborationCopyWith(
          Collaboration value, $Res Function(Collaboration) then) =
      _$CollaborationCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? duration,
      String? datatime,
      List<String>? profileImages});
}

/// @nodoc
class _$CollaborationCopyWithImpl<$Res>
    implements $CollaborationCopyWith<$Res> {
  _$CollaborationCopyWithImpl(this._value, this._then);

  final Collaboration _value;
  // ignore: unused_field
  final $Res Function(Collaboration) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? duration = freezed,
    Object? datatime = freezed,
    Object? profileImages = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      datatime: datatime == freezed
          ? _value.datatime
          : datatime // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImages: profileImages == freezed
          ? _value.profileImages
          : profileImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CollaborationCopyWith<$Res>
    implements $CollaborationCopyWith<$Res> {
  factory _$$_CollaborationCopyWith(
          _$_Collaboration value, $Res Function(_$_Collaboration) then) =
      __$$_CollaborationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? duration,
      String? datatime,
      List<String>? profileImages});
}

/// @nodoc
class __$$_CollaborationCopyWithImpl<$Res>
    extends _$CollaborationCopyWithImpl<$Res>
    implements _$$_CollaborationCopyWith<$Res> {
  __$$_CollaborationCopyWithImpl(
      _$_Collaboration _value, $Res Function(_$_Collaboration) _then)
      : super(_value, (v) => _then(v as _$_Collaboration));

  @override
  _$_Collaboration get _value => super._value as _$_Collaboration;

  @override
  $Res call({
    Object? title = freezed,
    Object? duration = freezed,
    Object? datatime = freezed,
    Object? profileImages = freezed,
  }) {
    return _then(_$_Collaboration(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      datatime: datatime == freezed
          ? _value.datatime
          : datatime // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImages: profileImages == freezed
          ? _value._profileImages
          : profileImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_Collaboration implements _Collaboration {
  _$_Collaboration(
      {this.title,
      this.duration,
      this.datatime,
      final List<String>? profileImages})
      : _profileImages = profileImages;

  @override
  final String? title;
  @override
  final String? duration;
  @override
  final String? datatime;
  final List<String>? _profileImages;
  @override
  List<String>? get profileImages {
    final value = _profileImages;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Collaboration(title: $title, duration: $duration, datatime: $datatime, profileImages: $profileImages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Collaboration &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.datatime, datatime) &&
            const DeepCollectionEquality()
                .equals(other._profileImages, _profileImages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(datatime),
      const DeepCollectionEquality().hash(_profileImages));

  @JsonKey(ignore: true)
  @override
  _$$_CollaborationCopyWith<_$_Collaboration> get copyWith =>
      __$$_CollaborationCopyWithImpl<_$_Collaboration>(this, _$identity);
}

abstract class _Collaboration implements Collaboration {
  factory _Collaboration(
      {final String? title,
      final String? duration,
      final String? datatime,
      final List<String>? profileImages}) = _$_Collaboration;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get duration => throw _privateConstructorUsedError;
  @override
  String? get datatime => throw _privateConstructorUsedError;
  @override
  List<String>? get profileImages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CollaborationCopyWith<_$_Collaboration> get copyWith =>
      throw _privateConstructorUsedError;
}

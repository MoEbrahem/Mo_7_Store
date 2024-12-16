// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeChangeMode,
    required TResult Function(Locale local) languageAppChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeChangeMode,
    TResult? Function(Locale local)? languageAppChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeChangeMode,
    TResult Function(Locale local)? languageAppChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeChangeModeState value) themeChangeMode,
    required TResult Function(_languageChangeState value) languageAppChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult? Function(_languageChangeState value)? languageAppChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult Function(_languageChangeState value)? languageAppChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeChangeMode,
    required TResult Function(Locale local) languageAppChange,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeChangeMode,
    TResult? Function(Locale local)? languageAppChange,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeChangeMode,
    TResult Function(Locale local)? languageAppChange,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeChangeModeState value) themeChangeMode,
    required TResult Function(_languageChangeState value) languageAppChange,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult? Function(_languageChangeState value)? languageAppChange,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult Function(_languageChangeState value)? languageAppChange,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ThemeChangeModeStateImplCopyWith<$Res> {
  factory _$$ThemeChangeModeStateImplCopyWith(_$ThemeChangeModeStateImpl value,
          $Res Function(_$ThemeChangeModeStateImpl) then) =
      __$$ThemeChangeModeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$ThemeChangeModeStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ThemeChangeModeStateImpl>
    implements _$$ThemeChangeModeStateImplCopyWith<$Res> {
  __$$ThemeChangeModeStateImplCopyWithImpl(_$ThemeChangeModeStateImpl _value,
      $Res Function(_$ThemeChangeModeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$ThemeChangeModeStateImpl(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ThemeChangeModeStateImpl implements _ThemeChangeModeState {
  const _$ThemeChangeModeStateImpl({required this.isDark});

  @override
  final bool isDark;

  @override
  String toString() {
    return 'AppState.themeChangeMode(isDark: $isDark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeChangeModeStateImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeChangeModeStateImplCopyWith<_$ThemeChangeModeStateImpl>
      get copyWith =>
          __$$ThemeChangeModeStateImplCopyWithImpl<_$ThemeChangeModeStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeChangeMode,
    required TResult Function(Locale local) languageAppChange,
  }) {
    return themeChangeMode(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeChangeMode,
    TResult? Function(Locale local)? languageAppChange,
  }) {
    return themeChangeMode?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeChangeMode,
    TResult Function(Locale local)? languageAppChange,
    required TResult orElse(),
  }) {
    if (themeChangeMode != null) {
      return themeChangeMode(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeChangeModeState value) themeChangeMode,
    required TResult Function(_languageChangeState value) languageAppChange,
  }) {
    return themeChangeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult? Function(_languageChangeState value)? languageAppChange,
  }) {
    return themeChangeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult Function(_languageChangeState value)? languageAppChange,
    required TResult orElse(),
  }) {
    if (themeChangeMode != null) {
      return themeChangeMode(this);
    }
    return orElse();
  }
}

abstract class _ThemeChangeModeState implements AppState {
  const factory _ThemeChangeModeState({required final bool isDark}) =
      _$ThemeChangeModeStateImpl;

  bool get isDark;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeChangeModeStateImplCopyWith<_$ThemeChangeModeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$languageChangeStateImplCopyWith<$Res> {
  factory _$$languageChangeStateImplCopyWith(_$languageChangeStateImpl value,
          $Res Function(_$languageChangeStateImpl) then) =
      __$$languageChangeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale local});
}

/// @nodoc
class __$$languageChangeStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$languageChangeStateImpl>
    implements _$$languageChangeStateImplCopyWith<$Res> {
  __$$languageChangeStateImplCopyWithImpl(_$languageChangeStateImpl _value,
      $Res Function(_$languageChangeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? local = null,
  }) {
    return _then(_$languageChangeStateImpl(
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$languageChangeStateImpl implements _languageChangeState {
  const _$languageChangeStateImpl({required this.local});

  @override
  final Locale local;

  @override
  String toString() {
    return 'AppState.languageAppChange(local: $local)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$languageChangeStateImpl &&
            (identical(other.local, local) || other.local == local));
  }

  @override
  int get hashCode => Object.hash(runtimeType, local);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$languageChangeStateImplCopyWith<_$languageChangeStateImpl> get copyWith =>
      __$$languageChangeStateImplCopyWithImpl<_$languageChangeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDark) themeChangeMode,
    required TResult Function(Locale local) languageAppChange,
  }) {
    return languageAppChange(local);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDark)? themeChangeMode,
    TResult? Function(Locale local)? languageAppChange,
  }) {
    return languageAppChange?.call(local);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDark)? themeChangeMode,
    TResult Function(Locale local)? languageAppChange,
    required TResult orElse(),
  }) {
    if (languageAppChange != null) {
      return languageAppChange(local);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeChangeModeState value) themeChangeMode,
    required TResult Function(_languageChangeState value) languageAppChange,
  }) {
    return languageAppChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult? Function(_languageChangeState value)? languageAppChange,
  }) {
    return languageAppChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult Function(_languageChangeState value)? languageAppChange,
    required TResult orElse(),
  }) {
    if (languageAppChange != null) {
      return languageAppChange(this);
    }
    return orElse();
  }
}

abstract class _languageChangeState implements AppState {
  const factory _languageChangeState({required final Locale local}) =
      _$languageChangeStateImpl;

  Locale get local;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$languageChangeStateImplCopyWith<_$languageChangeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

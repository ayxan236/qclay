// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'buy_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BuyState {
  BlocAction? get action => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuyStateCopyWith<BuyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyStateCopyWith<$Res> {
  factory $BuyStateCopyWith(BuyState value, $Res Function(BuyState) then) =
      _$BuyStateCopyWithImpl<$Res>;
  $Res call({BlocAction? action});
}

/// @nodoc
class _$BuyStateCopyWithImpl<$Res> implements $BuyStateCopyWith<$Res> {
  _$BuyStateCopyWithImpl(this._value, this._then);

  final BuyState _value;
  // ignore: unused_field
  final $Res Function(BuyState) _then;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
    ));
  }
}

/// @nodoc
abstract class _$$_BuyStateCopyWith<$Res> implements $BuyStateCopyWith<$Res> {
  factory _$$_BuyStateCopyWith(
          _$_BuyState value, $Res Function(_$_BuyState) then) =
      __$$_BuyStateCopyWithImpl<$Res>;
  @override
  $Res call({BlocAction? action});
}

/// @nodoc
class __$$_BuyStateCopyWithImpl<$Res> extends _$BuyStateCopyWithImpl<$Res>
    implements _$$_BuyStateCopyWith<$Res> {
  __$$_BuyStateCopyWithImpl(
      _$_BuyState _value, $Res Function(_$_BuyState) _then)
      : super(_value, (v) => _then(v as _$_BuyState));

  @override
  _$_BuyState get _value => super._value as _$_BuyState;

  @override
  $Res call({
    Object? action = freezed,
  }) {
    return _then(_$_BuyState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
    ));
  }
}

/// @nodoc

class _$_BuyState implements _BuyState {
  _$_BuyState({this.action});

  @override
  final BlocAction? action;

  @override
  String toString() {
    return 'BuyState(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuyState &&
            const DeepCollectionEquality().equals(other.action, action));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(action));

  @JsonKey(ignore: true)
  @override
  _$$_BuyStateCopyWith<_$_BuyState> get copyWith =>
      __$$_BuyStateCopyWithImpl<_$_BuyState>(this, _$identity);
}

abstract class _BuyState implements BuyState {
  factory _BuyState({final BlocAction? action}) = _$_BuyState;

  @override
  BlocAction? get action;
  @override
  @JsonKey(ignore: true)
  _$$_BuyStateCopyWith<_$_BuyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BuyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyEventCopyWith<$Res> {
  factory $BuyEventCopyWith(BuyEvent value, $Res Function(BuyEvent) then) =
      _$BuyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BuyEventCopyWithImpl<$Res> implements $BuyEventCopyWith<$Res> {
  _$BuyEventCopyWithImpl(this._value, this._then);

  final BuyEvent _value;
  // ignore: unused_field
  final $Res Function(BuyEvent) _then;
}

/// @nodoc
abstract class _$$InitCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCopyWithImpl<$Res> extends _$BuyEventCopyWithImpl<$Res>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, (v) => _then(v as _$Init));

  @override
  _$Init get _value => super._value as _$Init;
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'BuyEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements BuyEvent {
  const factory Init() = _$Init;
}

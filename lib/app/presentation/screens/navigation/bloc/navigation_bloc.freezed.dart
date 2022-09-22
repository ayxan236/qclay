// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function(NavigationBarItem item) navigationBarItemSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(NavigationBarItem item)? navigationBarItemSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(NavigationBarItem item)? navigationBarItemSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(NavigationBarItemSelected value)
        navigationBarItemSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(NavigationBarItemSelected value)?
        navigationBarItemSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(NavigationBarItemSelected value)?
        navigationBarItemSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  final NavigationEvent _value;
  // ignore: unused_field
  final $Res Function(NavigationEvent) _then;
}

/// @nodoc
abstract class _$$InitCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCopyWithImpl<$Res> extends _$NavigationEventCopyWithImpl<$Res>
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
    return 'NavigationEvent.init()';
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
    required TResult Function() screenOpened,
    required TResult Function(NavigationBarItem item) navigationBarItemSelected,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(NavigationBarItem item)? navigationBarItemSelected,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(NavigationBarItem item)? navigationBarItemSelected,
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
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(NavigationBarItemSelected value)
        navigationBarItemSelected,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(NavigationBarItemSelected value)?
        navigationBarItemSelected,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(NavigationBarItemSelected value)?
        navigationBarItemSelected,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements NavigationEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class _$$ScreenOpenedCopyWith<$Res> {
  factory _$$ScreenOpenedCopyWith(
          _$ScreenOpened value, $Res Function(_$ScreenOpened) then) =
      __$$ScreenOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScreenOpenedCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$$ScreenOpenedCopyWith<$Res> {
  __$$ScreenOpenedCopyWithImpl(
      _$ScreenOpened _value, $Res Function(_$ScreenOpened) _then)
      : super(_value, (v) => _then(v as _$ScreenOpened));

  @override
  _$ScreenOpened get _value => super._value as _$ScreenOpened;
}

/// @nodoc

class _$ScreenOpened implements ScreenOpened {
  const _$ScreenOpened();

  @override
  String toString() {
    return 'NavigationEvent.screenOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScreenOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function(NavigationBarItem item) navigationBarItemSelected,
  }) {
    return screenOpened();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(NavigationBarItem item)? navigationBarItemSelected,
  }) {
    return screenOpened?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(NavigationBarItem item)? navigationBarItemSelected,
    required TResult orElse(),
  }) {
    if (screenOpened != null) {
      return screenOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(NavigationBarItemSelected value)
        navigationBarItemSelected,
  }) {
    return screenOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(NavigationBarItemSelected value)?
        navigationBarItemSelected,
  }) {
    return screenOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(NavigationBarItemSelected value)?
        navigationBarItemSelected,
    required TResult orElse(),
  }) {
    if (screenOpened != null) {
      return screenOpened(this);
    }
    return orElse();
  }
}

abstract class ScreenOpened implements NavigationEvent {
  const factory ScreenOpened() = _$ScreenOpened;
}

/// @nodoc
abstract class _$$NavigationBarItemSelectedCopyWith<$Res> {
  factory _$$NavigationBarItemSelectedCopyWith(
          _$NavigationBarItemSelected value,
          $Res Function(_$NavigationBarItemSelected) then) =
      __$$NavigationBarItemSelectedCopyWithImpl<$Res>;
  $Res call({NavigationBarItem item});
}

/// @nodoc
class __$$NavigationBarItemSelectedCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$$NavigationBarItemSelectedCopyWith<$Res> {
  __$$NavigationBarItemSelectedCopyWithImpl(_$NavigationBarItemSelected _value,
      $Res Function(_$NavigationBarItemSelected) _then)
      : super(_value, (v) => _then(v as _$NavigationBarItemSelected));

  @override
  _$NavigationBarItemSelected get _value =>
      super._value as _$NavigationBarItemSelected;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$NavigationBarItemSelected(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as NavigationBarItem,
    ));
  }
}

/// @nodoc

class _$NavigationBarItemSelected implements NavigationBarItemSelected {
  const _$NavigationBarItemSelected(this.item);

  @override
  final NavigationBarItem item;

  @override
  String toString() {
    return 'NavigationEvent.navigationBarItemSelected(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationBarItemSelected &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$NavigationBarItemSelectedCopyWith<_$NavigationBarItemSelected>
      get copyWith => __$$NavigationBarItemSelectedCopyWithImpl<
          _$NavigationBarItemSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() screenOpened,
    required TResult Function(NavigationBarItem item) navigationBarItemSelected,
  }) {
    return navigationBarItemSelected(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(NavigationBarItem item)? navigationBarItemSelected,
  }) {
    return navigationBarItemSelected?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? screenOpened,
    TResult Function(NavigationBarItem item)? navigationBarItemSelected,
    required TResult orElse(),
  }) {
    if (navigationBarItemSelected != null) {
      return navigationBarItemSelected(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(ScreenOpened value) screenOpened,
    required TResult Function(NavigationBarItemSelected value)
        navigationBarItemSelected,
  }) {
    return navigationBarItemSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(NavigationBarItemSelected value)?
        navigationBarItemSelected,
  }) {
    return navigationBarItemSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(ScreenOpened value)? screenOpened,
    TResult Function(NavigationBarItemSelected value)?
        navigationBarItemSelected,
    required TResult orElse(),
  }) {
    if (navigationBarItemSelected != null) {
      return navigationBarItemSelected(this);
    }
    return orElse();
  }
}

abstract class NavigationBarItemSelected implements NavigationEvent {
  const factory NavigationBarItemSelected(final NavigationBarItem item) =
      _$NavigationBarItemSelected;

  NavigationBarItem get item;
  @JsonKey(ignore: true)
  _$$NavigationBarItemSelectedCopyWith<_$NavigationBarItemSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavigationState {
  BlocAction? get action => throw _privateConstructorUsedError;
  NavigationBarItem get selectedItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call({BlocAction? action, NavigationBarItem selectedItem});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? selectedItem = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as NavigationBarItem,
    ));
  }
}

/// @nodoc
abstract class _$$_NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$_NavigationStateCopyWith(
          _$_NavigationState value, $Res Function(_$_NavigationState) then) =
      __$$_NavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({BlocAction? action, NavigationBarItem selectedItem});
}

/// @nodoc
class __$$_NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements _$$_NavigationStateCopyWith<$Res> {
  __$$_NavigationStateCopyWithImpl(
      _$_NavigationState _value, $Res Function(_$_NavigationState) _then)
      : super(_value, (v) => _then(v as _$_NavigationState));

  @override
  _$_NavigationState get _value => super._value as _$_NavigationState;

  @override
  $Res call({
    Object? action = freezed,
    Object? selectedItem = freezed,
  }) {
    return _then(_$_NavigationState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      selectedItem: selectedItem == freezed
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as NavigationBarItem,
    ));
  }
}

/// @nodoc

class _$_NavigationState implements _NavigationState {
  _$_NavigationState(
      {this.action, this.selectedItem = NavigationBarItem.wallet});

  @override
  final BlocAction? action;
  @override
  @JsonKey()
  final NavigationBarItem selectedItem;

  @override
  String toString() {
    return 'NavigationState(action: $action, selectedItem: $selectedItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigationState &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality()
                .equals(other.selectedItem, selectedItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(selectedItem));

  @JsonKey(ignore: true)
  @override
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      __$$_NavigationStateCopyWithImpl<_$_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  factory _NavigationState(
      {final BlocAction? action,
      final NavigationBarItem selectedItem}) = _$_NavigationState;

  @override
  BlocAction? get action;
  @override
  NavigationBarItem get selectedItem;
  @override
  @JsonKey(ignore: true)
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

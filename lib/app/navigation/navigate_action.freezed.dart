// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigate_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigateAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateBack,
    required TResult Function(
            NavigateType navigateType, NavigationBarItem? navToItem)
        navigateToNavigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? navigateBack,
    TResult Function(NavigateType navigateType, NavigationBarItem? navToItem)?
        navigateToNavigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateBack,
    TResult Function(NavigateType navigateType, NavigationBarItem? navToItem)?
        navigateToNavigation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigateActionCopyWith<$Res> {
  factory $NavigateActionCopyWith(
          NavigateAction value, $Res Function(NavigateAction) then) =
      _$NavigateActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigateActionCopyWithImpl<$Res>
    implements $NavigateActionCopyWith<$Res> {
  _$NavigateActionCopyWithImpl(this._value, this._then);

  final NavigateAction _value;
  // ignore: unused_field
  final $Res Function(NavigateAction) _then;
}

/// @nodoc
abstract class _$$NavigateBackCopyWith<$Res> {
  factory _$$NavigateBackCopyWith(
          _$NavigateBack value, $Res Function(_$NavigateBack) then) =
      __$$NavigateBackCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateBackCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements _$$NavigateBackCopyWith<$Res> {
  __$$NavigateBackCopyWithImpl(
      _$NavigateBack _value, $Res Function(_$NavigateBack) _then)
      : super(_value, (v) => _then(v as _$NavigateBack));

  @override
  _$NavigateBack get _value => super._value as _$NavigateBack;
}

/// @nodoc

class _$NavigateBack implements NavigateBack {
  _$NavigateBack();

  @override
  String toString() {
    return 'NavigateAction.navigateBack()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateBack);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateBack,
    required TResult Function(
            NavigateType navigateType, NavigationBarItem? navToItem)
        navigateToNavigation,
  }) {
    return navigateBack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? navigateBack,
    TResult Function(NavigateType navigateType, NavigationBarItem? navToItem)?
        navigateToNavigation,
  }) {
    return navigateBack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateBack,
    TResult Function(NavigateType navigateType, NavigationBarItem? navToItem)?
        navigateToNavigation,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
  }) {
    return navigateBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
  }) {
    return navigateBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    required TResult orElse(),
  }) {
    if (navigateBack != null) {
      return navigateBack(this);
    }
    return orElse();
  }
}

abstract class NavigateBack implements NavigateAction {
  factory NavigateBack() = _$NavigateBack;
}

/// @nodoc
abstract class _$$NavigateToNavigationCopyWith<$Res> {
  factory _$$NavigateToNavigationCopyWith(_$NavigateToNavigation value,
          $Res Function(_$NavigateToNavigation) then) =
      __$$NavigateToNavigationCopyWithImpl<$Res>;
  $Res call({NavigateType navigateType, NavigationBarItem? navToItem});
}

/// @nodoc
class __$$NavigateToNavigationCopyWithImpl<$Res>
    extends _$NavigateActionCopyWithImpl<$Res>
    implements _$$NavigateToNavigationCopyWith<$Res> {
  __$$NavigateToNavigationCopyWithImpl(_$NavigateToNavigation _value,
      $Res Function(_$NavigateToNavigation) _then)
      : super(_value, (v) => _then(v as _$NavigateToNavigation));

  @override
  _$NavigateToNavigation get _value => super._value as _$NavigateToNavigation;

  @override
  $Res call({
    Object? navigateType = freezed,
    Object? navToItem = freezed,
  }) {
    return _then(_$NavigateToNavigation(
      navigateType == freezed
          ? _value.navigateType
          : navigateType // ignore: cast_nullable_to_non_nullable
              as NavigateType,
      navToItem: navToItem == freezed
          ? _value.navToItem
          : navToItem // ignore: cast_nullable_to_non_nullable
              as NavigationBarItem?,
    ));
  }
}

/// @nodoc

class _$NavigateToNavigation implements NavigateToNavigation {
  _$NavigateToNavigation(this.navigateType, {this.navToItem});

  @override
  final NavigateType navigateType;
  @override
  final NavigationBarItem? navToItem;

  @override
  String toString() {
    return 'NavigateAction.navigateToNavigation(navigateType: $navigateType, navToItem: $navToItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToNavigation &&
            const DeepCollectionEquality()
                .equals(other.navigateType, navigateType) &&
            const DeepCollectionEquality().equals(other.navToItem, navToItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(navigateType),
      const DeepCollectionEquality().hash(navToItem));

  @JsonKey(ignore: true)
  @override
  _$$NavigateToNavigationCopyWith<_$NavigateToNavigation> get copyWith =>
      __$$NavigateToNavigationCopyWithImpl<_$NavigateToNavigation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateBack,
    required TResult Function(
            NavigateType navigateType, NavigationBarItem? navToItem)
        navigateToNavigation,
  }) {
    return navigateToNavigation(navigateType, navToItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? navigateBack,
    TResult Function(NavigateType navigateType, NavigationBarItem? navToItem)?
        navigateToNavigation,
  }) {
    return navigateToNavigation?.call(navigateType, navToItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateBack,
    TResult Function(NavigateType navigateType, NavigationBarItem? navToItem)?
        navigateToNavigation,
    required TResult orElse(),
  }) {
    if (navigateToNavigation != null) {
      return navigateToNavigation(navigateType, navToItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBack value) navigateBack,
    required TResult Function(NavigateToNavigation value) navigateToNavigation,
  }) {
    return navigateToNavigation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
  }) {
    return navigateToNavigation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBack value)? navigateBack,
    TResult Function(NavigateToNavigation value)? navigateToNavigation,
    required TResult orElse(),
  }) {
    if (navigateToNavigation != null) {
      return navigateToNavigation(this);
    }
    return orElse();
  }
}

abstract class NavigateToNavigation implements NavigateAction {
  factory NavigateToNavigation(final NavigateType navigateType,
      {final NavigationBarItem? navToItem}) = _$NavigateToNavigation;

  NavigateType get navigateType;
  NavigationBarItem? get navToItem;
  @JsonKey(ignore: true)
  _$$NavigateToNavigationCopyWith<_$NavigateToNavigation> get copyWith =>
      throw _privateConstructorUsedError;
}

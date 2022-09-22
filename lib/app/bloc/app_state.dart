part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    BlocAction? action,
    @Default(Locale("az")) Locale locale,
  }) = _AppState;
}


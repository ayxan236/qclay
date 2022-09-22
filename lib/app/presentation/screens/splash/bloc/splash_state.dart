part of 'splash_bloc.dart';

@freezed
class SplashState extends BaseBlocState with _$SplashState {
  factory SplashState({
    BlocAction? action,
  }) = _StartState;
}


class RegisterLocalization extends BlocAction {}
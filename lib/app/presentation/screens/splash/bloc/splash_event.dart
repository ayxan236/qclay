part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  factory SplashEvent.init() = Init;
  factory SplashEvent.repeatClicked() = RepeatClicked;
}

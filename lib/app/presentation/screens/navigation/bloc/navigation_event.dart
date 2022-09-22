part of 'navigation_bloc.dart';

@freezed
class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.init() = Init;
  const factory NavigationEvent.screenOpened() = ScreenOpened;
  const factory NavigationEvent.navigationBarItemSelected(NavigationBarItem item) = NavigationBarItemSelected;
}

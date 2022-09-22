import 'dart:io';

import 'package:qclay/domain/enums/navigation_bar_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qclay/app/navigation/navigation_type.dart';
import 'package:qclay/core/bloc/bloc_action.dart';

part 'navigate_action.freezed.dart';

@freezed
class NavigateAction extends BlocAction with _$NavigateAction {
  factory NavigateAction.navigateBack() = NavigateBack;
  factory NavigateAction.navigateToNavigation(NavigateType navigateType, {NavigationBarItem? navToItem}) =
      NavigateToNavigation;
}

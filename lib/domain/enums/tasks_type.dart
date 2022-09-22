import 'package:qclay/localization/app_localizations.dart';

enum TaskType {
  low,
  middle,
  urgent,
}

extension TaskTypeExtension on TaskType {
  String getName(AppLocalizations localizations) {
    switch (this) {
      case TaskType.low:
        return localizations.low;
      case TaskType.middle:
        return localizations.middle;
      case TaskType.urgent:
        return localizations.urgent;
    }
  }
}

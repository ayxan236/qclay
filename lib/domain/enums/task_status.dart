import 'package:qclay/localization/app_localizations.dart';
import 'package:json_annotation/json_annotation.dart';


enum TaskStatus {
  @JsonValue("")
  isNew,
  @JsonValue("")
  executed,
  @JsonValue("")
  integrationMonitored,
  @JsonValue("")
  checking,
  @JsonValue("")
  customerWait,
}

extension TaskStatusExtension on TaskStatus {
  String getName(AppLocalizations localizations) {
    switch (this) {
      case TaskStatus.isNew:
        return localizations.isNew;
      case TaskStatus.checking:
        return localizations.checking;
      case TaskStatus.customerWait:
        return localizations.customerWait;
      case TaskStatus.integrationMonitored:
        return localizations.integrationMonitored;
      case TaskStatus.executed:
        return localizations.executed;
    }
  }
}

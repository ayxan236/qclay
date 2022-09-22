import 'dart:io';
import 'dart:ui';

import 'package:qclay/app/resources/app_colors.dart';
import 'package:qclay/core/bloc/bloc_action.dart';
import 'package:qclay/core/enums/MessageType.dart';
import 'package:qclay/localization/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dialogs {
  static Future<void> showAlertMessage({
    required BuildContext context,
    required String message,
    required String mainButtonText,
    String? additionalButtonText,
    String? title,
    VoidCallback? onMainButtonPressed,
    VoidCallback? onAdditionalButtonPressed,
    bool dismissible = true,
  }) async {
    return showDialog(
      barrierDismissible: dismissible,
      context: context,
      builder: (BuildContext context) {
        if (Platform.isIOS) {
          return CupertinoAlertDialog(
            title: title != null ? Text(title) : null,
            content: Text(message),
            actions: <Widget>[
              if (additionalButtonText != null)
                TextButton(
                  child: Text(additionalButtonText),
                  onPressed: () {
                    onAdditionalButtonPressed?.call();
                  },
                ),
              TextButton(
                child: Text(mainButtonText),
                onPressed: () {
                  if (onMainButtonPressed != null) {
                    onMainButtonPressed.call();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
              ),
            ],
          );
        } else {
          return Dialog(
            elevation: 0,
            insetPadding: EdgeInsets.zero,
            child: Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: Container(),
              ),
            ),
          );
        }
      },
    );
  }
}

void showAlertMessage(
  BuildContext context, {
  required ShowAlertMessage action,
  VoidCallback? onMainButtonPressed,
  VoidCallback? onAdditionalButtonPressed,
}) {
  switch (action.messageType) {
    case MessageType.customMessage:
      Dialogs.showAlertMessage(
        context: context,
        title: action.title,
        message: action.message!,
        mainButtonText: action.mainButtonText ?? 'Ok',
        additionalButtonText: action.additionalButtonText,
        dismissible: action.dismissible,
        onMainButtonPressed: onMainButtonPressed,
        onAdditionalButtonPressed: onAdditionalButtonPressed,
      );
      break;
    case MessageType.noGeoPermission:
      // Dialogs.showAlertMessage(
      //   context: context,
      //   title: AppLocalizations.of(context).cantGetGeoPermission,
      //   message: AppLocalizations.of(context).checkYourGeoSettings,
      //   mainButtonText: action.mainButtonText ?? 'Ok',
      //   additionalButtonText: action.additionalButtonText,
      //   dismissible: action.dismissible,
      //   onMainButtonPressed: onMainButtonPressed,
      //   onAdditionalButtonPressed: onAdditionalButtonPressed,
      // );
      break;
    case MessageType.noConnection:
      // TODO: Handle this case.
      break;
    case MessageType.serverError:
      // TODO: Handle this case.
      break;
    case MessageType.undefinedError:
      // TODO: Handle this case.
      break;
  }
}

void showSnackBarMessage(BuildContext context, ShowSnackBarMessage action) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        action.message,
        textAlign: TextAlign.center,
        style: TextStyle(color: AppColors.primary),
      ),
      backgroundColor: action.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
    ),
  );
}

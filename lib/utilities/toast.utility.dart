// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

class ToastUtility implements ToastUtilityAbstract {
  @override
  CherryToast show({
    required String title,
    ToastType type = ToastType.info,
    String? message,
    String? action,
    Function? actionHandler,
  }) {
    switch (type) {
      case ToastType.error:
        return CherryToast.error(
          title: Text(title),
          action: action != null ? Text(action) : null,
          actionHandler: actionHandler,
          animationType: AnimationType.fromTop,
          description: message != null ? Text(message) : null,
        );
      case ToastType.info:
        return CherryToast.info(
          title: Text(title),
          action: action != null ? Text(action) : null,
          actionHandler: actionHandler,
          animationType: AnimationType.fromTop,
          description: message != null ? Text(message) : null,
        );
      case ToastType.success:
        return CherryToast.success(
          title: Text(title),
          action: action != null ? Text(action) : null,
          actionHandler: actionHandler,
          animationType: AnimationType.fromTop,
          description: message != null ? Text(message) : null,
        );
      case ToastType.warning:
        return CherryToast.warning(
          title: Text(title),
          action: action != null ? Text(action) : null,
          actionHandler: actionHandler,
          animationType: AnimationType.fromTop,
          description: message != null ? Text(message) : null,
        );
    }
  }
}

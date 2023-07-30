// 🐦 Flutter imports:
import 'package:cherry_toast/cherry_toast.dart';

abstract class ToastUtilityAbstract {
  CherryToast show({
    required String title,
    ToastType type = ToastType.info,
    String? message,
    String? action,
    Function? actionHandler,
  });
}

enum ToastType {
  error,
  info,
  success,
  warning,
}

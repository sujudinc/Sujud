// 📦 Package imports:
import 'package:logger/logger.dart';

abstract class LoggerUtilityAbstract {
  Logger get logger;
  void log(message, {LogLevel level = LogLevel.debug});
}

enum LogLevel {
  error,
  warning,
  trace,
  debug,
}
